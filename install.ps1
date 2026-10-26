$ErrorActionPreference = 'Stop'
$skillSources = @(
    @{ Name = 'robotics-knowledge'; Path = (Join-Path $PSScriptRoot 'skill\SKILL.md') },
    @{ Name = 'robotics-engineering'; Path = (Join-Path $PSScriptRoot 'skill\robotics-engineering\SKILL.md') }
)
$toolRoots = @(
    (Join-Path $HOME '.codex\skills'),
    (Join-Path $HOME '.claude\skills'),
    (Join-Path $HOME '.gemini\config\skills')
)
foreach ($toolRoot in $toolRoots) {
    foreach ($skill in $skillSources) {
        $target = Join-Path $toolRoot $skill.Name
        New-Item -ItemType Directory -Force -Path $target | Out-Null
        Copy-Item -LiteralPath $skill.Path -Destination (Join-Path $target 'SKILL.md') -Force
        Write-Output "Installed: $target"
    }
}
