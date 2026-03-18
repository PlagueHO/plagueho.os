<#
.SYNOPSIS
    Update marketplace.json by discovering unassigned skills/agents or
    appending items to plugins.

.DESCRIPTION
    Supports three modes:
    - Discover: list skills and agents not assigned to any plugin.
    - Add to existing plugin: append a skill or agent to a named plugin.
    - Create new plugin: create a new plugin entry with an initial skill/agent.

    Follows append-only semantics — never removes entries. Bumps plugin MINOR
    version when content is added and marketplace MINOR version when any
    changes are made.

.PARAMETER RepoRoot
    Path to the repository root. Defaults to the parent of the directory
    containing this script.

.PARAMETER Discover
    When specified, outputs a JSON array of unassigned skills and agents.

.PARAMETER PluginName
    The name of the plugin to add to or create.

.PARAMETER AddSkill
    Relative path (from plugin source) of a skill to add to the plugin.

.PARAMETER AddAgent
    Relative path (from plugin source) of an agent to add to the plugin.

.PARAMETER NewPlugin
    When specified, creates a new plugin entry.

.PARAMETER PluginDescription
    Description for the new plugin (required with -NewPlugin).

.PARAMETER PluginSource
    Source path for the new plugin (required with -NewPlugin).

.EXAMPLE
    # Discover unassigned items
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -Discover

.EXAMPLE
    # Add a skill to an existing plugin
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -PluginName "my-plugin" -AddSkill "."

.EXAMPLE
    # Create a new plugin with a skill
    .\Update-Marketplace.ps1 -RepoRoot "C:\repo" -NewPlugin -PluginName "new-plugin" `
        -PluginDescription "Does something useful." -PluginSource "./.github/skills/new-plugin" -AddSkill "."
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
    [string]$PluginSource
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$marketplacePath = Join-Path $RepoRoot '.github' 'plugin' 'marketplace.json'
$skillsDir = Join-Path $RepoRoot '.github' 'skills'
$agentsDir = Join-Path $RepoRoot '.github' 'agents'

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

function Read-AgentFrontmatter {
    param([string]$Path)
    $content = Get-Content -Path $Path -Raw -Encoding UTF8
    $result = @{}

    if ($content -match '(?s)^---\s*\r?\n(.+?)\r?\n---') {
        $yaml = $Matches[1]
        if ($yaml -match "(?m)^description:\s*['\""](.*?)['\""]") {
            $result['description'] = $Matches[1].Trim()
        }
        elseif ($yaml -match '(?m)^description:\s*(.+)$') {
            $result['description'] = $Matches[1].Trim().Trim('"', "'")
        }
    }

    # Derive name from filename (remove .agent.md suffix)
    $fileName = [System.IO.Path]::GetFileName($Path)
    $result['name'] = $fileName -replace '\.agent\.md$', ''

    if (-not $result['description']) {
        # Use first non-empty, non-heading line as description
        $lines = $content -split '\r?\n'
        foreach ($line in $lines) {
            $trimmed = $line.Trim()
            if ($trimmed -ne '' -and $trimmed -notmatch '^---' -and $trimmed -notmatch '^#') {
                $result['description'] = $trimmed
                break
            }
        }
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

# ---------------------------------------------------------------------------
# Discover mode
# ---------------------------------------------------------------------------

if ($Discover) {
    $marketplace = Read-Marketplace

    # Collect all skills and agents already assigned
    $assignedSkills = @{}
    $assignedAgents = @{}

    foreach ($plugin in $marketplace.plugins) {
        $pluginSource = $plugin.source
        $skillsList = if ($plugin.PSObject.Properties['skills']) { $plugin.skills } else { @() }
        foreach ($s in $skillsList) {
            if ($s -eq '.') {
                $assignedSkills[$pluginSource] = $true
            }
            else {
                $fullPath = "$pluginSource/$s" -replace '\\', '/'
                $assignedSkills[$fullPath] = $true
            }
        }
        $agentsList = if ($plugin.PSObject.Properties['agents']) { $plugin.agents } else { @() }
        foreach ($a in $agentsList) {
            $fullPath = "$pluginSource/$a" -replace '\\', '/'
            $assignedAgents[$fullPath] = $true
        }
    }

    $unassigned = @()

    # Check skills
    if (Test-Path $skillsDir) {
        $skillDirs = Get-ChildItem -Path $skillsDir -Directory | Sort-Object Name
        foreach ($dir in $skillDirs) {
            $skillFile = Join-Path $dir.FullName 'SKILL.md'
            if (-not (Test-Path $skillFile)) { continue }

            $source = "./.github/skills/$($dir.Name)"
            # Check if this skill source is assigned (either as plugin source with "." or as a sub-path)
            $isAssigned = $false
            foreach ($plugin in $marketplace.plugins) {
                $pluginSource = $plugin.source -replace '\\', '/'
                $skillsList = if ($plugin.PSObject.Properties['skills']) { $plugin.skills } else { @() }
                foreach ($s in $skillsList) {
                    if ($s -eq '.') {
                        if ($pluginSource -eq $source) { $isAssigned = $true; break }
                    }
                    else {
                        $fullPath = "$pluginSource/$s" -replace '\\', '/'
                        if ($fullPath -eq $source) { $isAssigned = $true; break }
                    }
                }
                if ($isAssigned) { break }
            }

            if (-not $isAssigned) {
                $fm = Read-SkillFrontmatter -Path $skillFile
                $name = if ($fm -and $fm['name']) { $fm['name'] } else { $dir.Name }
                $desc = if ($fm -and $fm['description']) { $fm['description'] } else { '' }
                $unassigned += @{
                    type        = 'skill'
                    name        = $name
                    description = $desc
                    source      = $source
                }
            }
        }
    }

    # Check agents
    if (Test-Path $agentsDir) {
        $agentFiles = Get-ChildItem -Path $agentsDir -File -Filter '*.agent.md' | Sort-Object Name
        foreach ($file in $agentFiles) {
            $relPath = "./.github/agents/$($file.Name)"
            $isAssigned = $false
            foreach ($plugin in $marketplace.plugins) {
                $agentsList = if ($plugin.PSObject.Properties['agents']) { $plugin.agents } else { @() }
                foreach ($a in $agentsList) {
                    $pluginSource = $plugin.source -replace '\\', '/'
                    $fullPath = "$pluginSource/$a" -replace '\\', '/'
                    if ($fullPath -eq $relPath -or $a -eq $relPath -or $a -eq $file.Name) {
                        $isAssigned = $true
                        break
                    }
                }
                if ($isAssigned) { break }
            }

            if (-not $isAssigned) {
                $fm = Read-AgentFrontmatter -Path $file.FullName
                $unassigned += @{
                    type        = 'agent'
                    name        = $fm['name']
                    description = if ($fm['description']) { $fm['description'] } else { '' }
                    source      = $relPath
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
    # Validate required parameters for new plugin
    if (-not $PluginDescription) {
        Write-Error '-PluginDescription is required when creating a new plugin.'
        exit 1
    }
    if (-not $PluginSource) {
        Write-Error '-PluginSource is required when creating a new plugin.'
        exit 1
    }

    # Check plugin doesn't already exist
    $existing = $marketplace.plugins | Where-Object { $_.name -eq $PluginName }
    if ($existing) {
        Write-Error "Plugin '$PluginName' already exists. Use without -NewPlugin to add to it."
        exit 1
    }

    $newPluginObj = [ordered]@{
        name        = $PluginName
        source      = $PluginSource
        description = $PluginDescription
        version     = '1.0.0'
        skills      = @()
        agents      = @()
    }

    if ($AddSkill) { $newPluginObj.skills = @($AddSkill) }
    if ($AddAgent) { $newPluginObj.agents = @($AddAgent) }

    # Remove empty arrays for cleaner JSON
    if ($newPluginObj.skills.Count -eq 0) { $newPluginObj.Remove('skills') }
    if ($newPluginObj.agents.Count -eq 0) { $newPluginObj.Remove('agents') }

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
        # Ensure skills array exists
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
    $marketplace.metadata.version = Bump-MinorVersion $marketplace.metadata.version
    Write-Marketplace -Marketplace $marketplace
    Write-Host "Marketplace updated. Version: $($marketplace.metadata.version)"
}
else {
    Write-Host 'No changes made.'
}
