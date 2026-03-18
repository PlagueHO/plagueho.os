<#
.SYNOPSIS
    Update marketplace.json by discovering unassigned skills/agents in the
    plugins/ directory or appending items to plugins. Also generates README.md
    files for each plugin.

.DESCRIPTION
    Supports four modes:
    - Discover: list skills and agents in plugins/ not assigned to any plugin
      entry in marketplace.json.
    - Add to existing plugin: append a skill or agent to a named plugin.
    - Create new plugin: create a new plugin entry with an initial skill/agent.
    - Update READMEs: regenerate README.md in each plugin directory.

    Follows append-only semantics — never removes entries. Bumps plugin MINOR
    version when content is added and marketplace MINOR version when any
    changes are made.

    Skills in .github/skills/ are repo-local and not included in the
    marketplace index.

.PARAMETER RepoRoot
    Path to the repository root. Defaults to the parent of the directory
    containing this script.

.PARAMETER Discover
    When specified, outputs a JSON array of unassigned skills and agents.

.PARAMETER PluginName
    The name of the plugin to add to or create.

.PARAMETER AddSkill
    Relative path (from plugin source) of a skill to add (e.g., ./skills/my-skill).

.PARAMETER AddAgent
    Relative path (from plugin source) of an agent to add.

.PARAMETER NewPlugin
    When specified, creates a new plugin entry.

.PARAMETER PluginDescription
    Description for the new plugin (required with -NewPlugin).

.PARAMETER UpdateReadmes
    When specified, regenerates README.md for every plugin in marketplace.json.

.EXAMPLE
    # Discover unassigned items
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -Discover

.EXAMPLE
    # Add a skill to an existing plugin
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -PluginName "my-plugin" -AddSkill "./skills/new-skill"

.EXAMPLE
    # Create a new plugin with a skill
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -NewPlugin -PluginName "new-plugin" `
        -PluginDescription "Does something useful." -AddSkill "./skills/new-skill"

.EXAMPLE
    # Regenerate all plugin READMEs
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -UpdateReadmes
#>
[CmdletBinding()]
param(
    [Parameter()]
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..\..\..')),

    [Parameter()]
    [switch]$Discover,

    [Parameter()]
    [string]$PluginName,

    [Parameter()]
    [string]$AddSkill,

    [Parameter()]
    [string]$AddAgent,

    [Parameter()]
    [switch]$NewPlugin,

    [Parameter()]
    [string]$PluginDescription,

    [Parameter()]
    [switch]$UpdateReadmes
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$marketplacePath = Join-Path $RepoRoot '.github' 'plugin' 'marketplace.json'
$pluginsDir = Join-Path $RepoRoot 'plugins'

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

function Read-SkillFrontmatter {
    param([string]$Path)
    $content = Get-Content -Path $Path -Raw -Encoding UTF8
    if ($content -notmatch '(?s)^---\s*\r?\n(.+?)\r?\n---') { return $null }
    $yaml = $Matches[1]
    $result = @{}

    if ($yaml -match '(?m)^name:\s*(.+)$') {
        $result['name'] = $Matches[1].Trim().Trim('"', "'")
    }

    if ($yaml -match '(?m)^description:\s*[>|]') {
        $lines = $yaml -split '\r?\n'
        $descLines = @()
        $inDesc = $false
        foreach ($line in $lines) {
            if ($line -match '^description:\s*[>|]') { $inDesc = $true; continue }
            if ($inDesc) {
                if ($line -match '^\s{2,}' -and $line.Trim() -ne '') { $descLines += $line.Trim() }
                else { break }
            }
        }
        $result['description'] = ($descLines -join ' ').Trim()
    }
    elseif ($yaml -match '(?m)^description:\s*(.+)$') {
        $result['description'] = $Matches[1].Trim().Trim('"', "'")
    }

    return $result
}

function Bump-MinorVersion {
    param([string]$Version)
    if ($Version -match '^(\d+)\.(\d+)\.(\d+)$') {
        $major = [int]$Matches[1]
        $minor = [int]$Matches[2] + 1
        return "$major.$minor.0"
    }
    return $Version
}

function Read-Marketplace {
    if (-not (Test-Path $marketplacePath)) {
        Write-Error "marketplace.json not found at: $marketplacePath"
        exit 1
    }
    return Get-Content -Path $marketplacePath -Raw -Encoding UTF8 | ConvertFrom-Json
}

function Write-Marketplace {
    param($Marketplace)
    $json = ($Marketplace | ConvertTo-Json -Depth 10) + "`n"
    $pluginDir = Split-Path $marketplacePath -Parent
    if (-not (Test-Path $pluginDir)) {
        New-Item -Path $pluginDir -ItemType Directory -Force | Out-Null
    }
    Set-Content -Path $marketplacePath -Value $json -Encoding UTF8 -NoNewline
}

function Generate-PluginReadme {
    param(
        [string]$PluginDir,
        [string]$PluginName,
        [string]$Description,
        [array]$Skills
    )
    $title = ($PluginName -replace '-', ' ') -replace '(?:^|\s)\S', { $_.Value.ToUpper() }
    $lines = @()
    $lines += "# $title"
    $lines += ''
    $lines += $Description
    $lines += ''
    $lines += '## What it does'
    $lines += ''

    # Collect skill details for the "What it does" bullets and skill sections
    $skillDetails = @()
    foreach ($skillRef in $Skills) {
        $skillName = $skillRef -replace '^\./skills/', ''
        $skillDir = Join-Path $PluginDir 'skills' $skillName
        $skillFile = Join-Path $skillDir 'SKILL.md'
        $purpose = ''
        if (Test-Path $skillFile) {
            $fm = Read-SkillFrontmatter -Path $skillFile
            if ($fm -and $fm['description']) {
                $raw = $fm['description']
                $raw = $raw -replace '^\*\*\w+ SKILL\*\*\s*[-—]\s*', ''
                $raw = $raw -replace '\s*WHEN:.*$', ''
                $raw = $raw -replace '\s*INVOKES:.*$', ''
                $raw = $raw -replace '\s*FOR SINGLE OPERATIONS:.*$', ''
                $purpose = $raw.Trim()
            }
        }
        $skillDetails += @{ name = $skillName; purpose = $purpose }
    }

    # Generate bullet list from skill purposes
    foreach ($s in $skillDetails) {
        if ($s.purpose) {
            # Take first sentence for bullet
            $sentence = $s.purpose -replace '\..*$', ''
            $bullet = $sentence.Substring(0, 1).ToUpper() + $sentence.Substring(1)
            $lines += "- $bullet"
        }
    }

    $lines += ''
    $lines += '## Skills'

    foreach ($s in $skillDetails) {
        $lines += ''
        $lines += "### ``$($s.name)``"
        $lines += ''
        if ($s.purpose) {
            $lines += "Activated when a user asks to $($s.purpose.Substring(0, 1).ToLower())$($s.purpose.Substring(1))"
        }
    }

    $lines += ''
    $readmePath = Join-Path $PluginDir 'README.md'
    $content = ($lines -join "`n") + "`n"
    Set-Content -Path $readmePath -Value $content -Encoding UTF8 -NoNewline
    Write-Host "Generated README: $readmePath"
}

# ---------------------------------------------------------------------------
# Update READMEs mode
# ---------------------------------------------------------------------------

if ($UpdateReadmes) {
    $marketplace = Read-Marketplace
    foreach ($plugin in $marketplace.plugins) {
        $pluginDirName = $plugin.source -replace '^\./plugins/', ''
        $pluginDirPath = Join-Path $pluginsDir $pluginDirName
        if (-not (Test-Path $pluginDirPath)) {
            Write-Warning "Plugin directory not found: $pluginDirPath"
            continue
        }
        $skillsList = if ($plugin.PSObject.Properties['skills']) { @($plugin.skills) } else { @() }
        Generate-PluginReadme `
            -PluginDir $pluginDirPath `
            -PluginName $plugin.name `
            -Description $plugin.description `
            -Skills $skillsList
    }
    exit 0
}

# ---------------------------------------------------------------------------
# Discover mode
# ---------------------------------------------------------------------------

if ($Discover) {
    $marketplace = Read-Marketplace

    # Build a set of all assigned skill paths (relative to repo root)
    $assignedSkills = @{}
    foreach ($plugin in $marketplace.plugins) {
        $pluginSource = $plugin.source -replace '\\', '/'
        $skillsList = if ($plugin.PSObject.Properties['skills']) { $plugin.skills } else { @() }
        foreach ($s in $skillsList) {
            # Normalize: source + / + skill → e.g., ./plugins/my-plugin/./skills/foo
            $fullPath = "$pluginSource/$s" -replace '\\', '/' -replace '/\./', '/'
            $assignedSkills[$fullPath] = $true
        }
    }

    $unassigned = @()

    # Scan plugins/ directory for skill directories
    if (Test-Path $pluginsDir) {
        $pluginDirs = Get-ChildItem -Path $pluginsDir -Directory | Sort-Object Name
        foreach ($pDir in $pluginDirs) {
            $skillsPath = Join-Path $pDir.FullName 'skills'
            if (-not (Test-Path $skillsPath)) { continue }

            $skillDirs = Get-ChildItem -Path $skillsPath -Directory | Sort-Object Name
            foreach ($sDir in $skillDirs) {
                $skillFile = Join-Path $sDir.FullName 'SKILL.md'
                if (-not (Test-Path $skillFile)) {
                    Write-Warning "No SKILL.md in $($sDir.FullName) — skipping."
                    continue
                }

                # Build the full canonical path
                $canonicalPath = "./plugins/$($pDir.Name)/./skills/$($sDir.Name)" -replace '/\./', '/'
                if ($assignedSkills.ContainsKey($canonicalPath)) { continue }

                $fm = Read-SkillFrontmatter -Path $skillFile
                $name = if ($fm -and $fm['name']) { $fm['name'] } else { $sDir.Name }
                $desc = if ($fm -and $fm['description']) { $fm['description'] } else { '' }
                $unassigned += @{
                    type         = 'skill'
                    name         = $name
                    description  = $desc
                    plugin       = $pDir.Name
                    relativePath = "./skills/$($sDir.Name)"
                }
            }
        }
    }

    $unassigned | ConvertTo-Json -Depth 5
    exit 0
}

# ---------------------------------------------------------------------------
# Add / Create plugin mode
# ---------------------------------------------------------------------------

if (-not $PluginName) {
    Write-Error 'Specify -PluginName (and optionally -AddSkill, -AddAgent, -NewPlugin).'
    exit 1
}

$marketplace = Read-Marketplace
$changed = $false

if ($NewPlugin) {
    if (-not $PluginDescription) {
        Write-Error '-PluginDescription is required when creating a new plugin.'
        exit 1
    }

    # Check plugin doesn't already exist
    $existing = $marketplace.plugins | Where-Object { $_.name -eq $PluginName }
    if ($existing) {
        Write-Error "Plugin '$PluginName' already exists. Use without -NewPlugin to add to it."
        exit 1
    }

    # Canonical source path
    $pluginSource = "./plugins/$PluginName"

    # Create plugin directory structure if it doesn't exist
    $pluginDirPath = Join-Path $pluginsDir $PluginName 'skills'
    if (-not (Test-Path $pluginDirPath)) {
        New-Item -Path $pluginDirPath -ItemType Directory -Force | Out-Null
    }

    $newPluginObj = [ordered]@{
        name        = $PluginName
        source      = $pluginSource
        description = $PluginDescription
        version     = '1.0.0'
        skills      = @()
    }

    if ($AddSkill) { $newPluginObj.skills = @($AddSkill) }

    # Add to plugins array (sorted by name)
    $pluginsList = [System.Collections.ArrayList]@($marketplace.plugins)
    $null = $pluginsList.Add([PSCustomObject]$newPluginObj)
    $pluginsList = [System.Collections.ArrayList]@($pluginsList | Sort-Object name)
    $marketplace.plugins = @($pluginsList)
    $changed = $true

    Write-Host "Created new plugin '$PluginName'."
}
else {
    # Add to existing plugin
    $plugin = $marketplace.plugins | Where-Object { $_.name -eq $PluginName }
    if (-not $plugin) {
        Write-Error "Plugin '$PluginName' not found. Use -NewPlugin to create it."
        exit 1
    }

    if ($AddSkill) {
        if (-not $plugin.PSObject.Properties['skills']) {
            $plugin | Add-Member -NotePropertyName 'skills' -NotePropertyValue @() -Force
        }
        $existingSkills = @($plugin.skills)
        if ($AddSkill -notin $existingSkills) {
            $plugin.skills = @($existingSkills + $AddSkill)
            $plugin.version = Bump-MinorVersion $plugin.version
            $changed = $true
            Write-Host "Added skill '$AddSkill' to plugin '$PluginName'."
        }
        else {
            Write-Host "Skill '$AddSkill' already exists in plugin '$PluginName'. Skipping."
        }
    }

    if ($AddAgent) {
        if (-not $plugin.PSObject.Properties['agents']) {
            $plugin | Add-Member -NotePropertyName 'agents' -NotePropertyValue @() -Force
        }
        $existingAgents = @($plugin.agents)
        if ($AddAgent -notin $existingAgents) {
            $plugin.agents = @($existingAgents + $AddAgent)
            $plugin.version = Bump-MinorVersion $plugin.version
            $changed = $true
            Write-Host "Added agent '$AddAgent' to plugin '$PluginName'."
        }
        else {
            Write-Host "Agent '$AddAgent' already exists in plugin '$PluginName'. Skipping."
        }
    }
}

# Bump marketplace version if anything changed
if ($changed) {
    $repoName = ((Split-Path $RepoRoot -Leaf) -replace '\.', '-') + '-plugins'
    $marketplace.name = $repoName
    $marketplace.metadata.version = Bump-MinorVersion $marketplace.metadata.version
    Write-Marketplace -Marketplace $marketplace
    Write-Host "Marketplace updated. Version: $($marketplace.metadata.version)"
}
else {
    Write-Host 'No changes made.'
}
