<#
.SYNOPSIS
    Synchronizes .github/plugin/marketplace.json with the skills in .github/skills/.

.DESCRIPTION
    Scans .github/skills/ for directories containing a SKILL.md file, parses their
    YAML frontmatter for name, description, and version, and regenerates the
    marketplace.json plugin index.

    In -Check mode, the script compares the generated JSON with the existing file
    and exits with code 1 if they differ (useful for CI validation).

.PARAMETER RepoRoot
    Path to the repository root. Defaults to the parent of the scripts/ directory.

.PARAMETER Check
    When specified, compares the generated marketplace.json with the existing file
    and exits with code 1 if they are out of sync. Does not write any files.

.EXAMPLE
    # Regenerate marketplace.json
    .\scripts\Sync-MarketplaceJson.ps1

.EXAMPLE
    # CI check — fail if out of sync
    .\scripts\Sync-MarketplaceJson.ps1 -Check
#>
[CmdletBinding()]
param(
    [Parameter()]
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')),

    [Parameter()]
    [switch]$Check
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$skillsDir = Join-Path $RepoRoot '.github' 'skills'
$marketplacePath = Join-Path $RepoRoot '.github' 'plugin' 'marketplace.json'

if (-not (Test-Path $skillsDir)) {
    Write-Error "Skills directory not found: $skillsDir"
    exit 1
}

# Parse YAML frontmatter from a SKILL.md file.
# Returns a hashtable with name, description, version keys.
function Read-SkillFrontmatter {
    param([string]$Path)

    $content = Get-Content -Path $Path -Raw -Encoding UTF8
    if ($content -notmatch '(?s)^---\s*\r?\n(.+?)\r?\n---') {
        return $null
    }

    $yaml = $Matches[1]
    $result = @{}

    # Extract name
    if ($yaml -match '(?m)^name:\s*(.+)$') {
        $result['name'] = $Matches[1].Trim().Trim('"', "'")
    }

    # Extract description — handles single-line and multi-line (quoted or folded)
    if ($yaml -match '(?m)^description:\s*[>|]') {
        # Multi-line scalar (folded > or literal |)
        $lines = $yaml -split '\r?\n'
        $descLines = @()
        $inDesc = $false
        foreach ($line in $lines) {
            if ($line -match '^description:\s*[>|]') {
                $inDesc = $true
                continue
            }
            if ($inDesc) {
                if ($line -match '^\s{2,}' -and $line.Trim() -ne '') {
                    $descLines += $line.Trim()
                }
                else {
                    break
                }
            }
        }
        $result['description'] = ($descLines -join ' ').Trim()
    }
    elseif ($yaml -match '(?m)^description:\s*(.+)$') {
        $result['description'] = $Matches[1].Trim().Trim('"', "'")
    }

    # Extract version from metadata block
    if ($yaml -match '(?m)^\s+version:\s*[''"]?([^''"]+)[''"]?') {
        $result['version'] = $Matches[1].Trim()
    }
    else {
        $result['version'] = '1.0'
    }

    return $result
}

# Discover all skills
[System.Collections.ArrayList]$plugins = @()
$skillDirs = Get-ChildItem -Path $skillsDir -Directory | Sort-Object Name

foreach ($dir in $skillDirs) {
    $skillFile = Join-Path $dir.FullName 'SKILL.md'
    if (-not (Test-Path $skillFile)) {
        Write-Warning "Skipping $($dir.Name): no SKILL.md found"
        continue
    }

    $frontmatter = Read-SkillFrontmatter -Path $skillFile
    if (-not $frontmatter) {
        Write-Warning "Skipping $($dir.Name): no YAML frontmatter in SKILL.md"
        continue
    }

    $name = if ($frontmatter['name']) { $frontmatter['name'] } else { $dir.Name }

    # Clean description — strip markdown bold (**) and WHEN/INVOKES clauses for
    # the marketplace summary (keep it user-friendly)
    $desc = $frontmatter['description']
    $desc = $desc -replace '\*\*WORKFLOW SKILL\*\*\s*—\s*', ''
    $desc = $desc -replace '\s*WHEN:.*$', ''
    $desc = $desc -replace '\s*INVOKES:.*$', ''
    $desc = $desc -replace '\s*FOR SINGLE OPERATIONS:.*$', ''
    $desc = $desc -replace '\s*USE FOR:.*$', ''
    $desc = $desc -replace '\s*DO NOT USE.*$', ''
    $desc = $desc.Trim(' .')
    if ($desc.Length -gt 0) {
        $desc = $desc.Substring(0, 1).ToUpper() + $desc.Substring(1)
        if (-not $desc.EndsWith('.')) { $desc += '.' }
    }

    # Normalise version to semver (append .0 if needed)
    $ver = $frontmatter['version']
    $dotCount = @($ver.ToCharArray() | Where-Object { $_ -eq '.' }).Count
    if ($dotCount -eq 0) { $ver = "$ver.0.0" }
    elseif ($dotCount -eq 1) { $ver = "$ver.0" }

    $null = $plugins.Add([ordered]@{
        name        = $name
        source      = "./.github/skills/$($dir.Name)"
        description = $desc
        version     = $ver
        skills      = @('.')
    })
}

# Determine metadata version — bump patch if file already exists
$metadataVersion = '1.0.0'
if (Test-Path $marketplacePath) {
    try {
        $existing = Get-Content -Path $marketplacePath -Raw -Encoding UTF8 | ConvertFrom-Json
        $currentVer = $existing.metadata.version
        if ($currentVer -match '^(\d+)\.(\d+)\.(\d+)$') {
            $major = [int]$Matches[1]
            $minor = [int]$Matches[2]
            $patch = [int]$Matches[3] + 1
            $metadataVersion = "$major.$minor.$patch"
        }
        else {
            $metadataVersion = $currentVer
        }
    }
    catch {
        Write-Warning "Could not read existing marketplace.json version; defaulting to 1.0.0"
    }
}

# Build the full marketplace object
$marketplace = [ordered]@{
    name     = 'plagueho-os'
    metadata = [ordered]@{
        description = "PlagueHO's personal GitHub Copilot agent plugins for Daniel Scott-Raynsford."
        version     = $metadataVersion
    }
    owner    = [ordered]@{
        name = 'Daniel Scott-Raynsford'
        url  = 'https://github.com/PlagueHO'
    }
    plugins  = $plugins
}

$generated = ($marketplace | ConvertTo-Json -Depth 10) + "`n"

if ($Check) {
    if (-not (Test-Path $marketplacePath)) {
        Write-Error "marketplace.json does not exist at: $marketplacePath"
        exit 1
    }

    $existing = Get-Content -Path $marketplacePath -Raw -Encoding UTF8
    if ($generated -eq $existing) {
        Write-Host '✓ marketplace.json is in sync with .github/skills/'
        exit 0
    }
    else {
        Write-Error '✗ marketplace.json is out of sync with .github/skills/. Run: pwsh scripts/Sync-MarketplaceJson.ps1'
        exit 1
    }
}

# Ensure the plugin directory exists
$pluginDir = Split-Path $marketplacePath -Parent
if (-not (Test-Path $pluginDir)) {
    New-Item -Path $pluginDir -ItemType Directory -Force | Out-Null
}

Set-Content -Path $marketplacePath -Value $generated -Encoding UTF8 -NoNewline
$pluginCount = @($plugins).Count
Write-Host "✓ marketplace.json updated with $pluginCount plugins."
