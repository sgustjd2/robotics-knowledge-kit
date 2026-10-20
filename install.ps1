$ErrorActionPreference = 'Stop'
$skillSource = Join-Path $PSScriptRoot 'skill'
$targets = @(
    (Join-Path $HOME '.codex\skills\robotics-knowledge'),
    (Join-Path $HOME '.claude\skills\robotics-knowledge'),
    (Join-Path $HOME '.gemini\config\skills\robotics-knowledge')
)
foreach ($target in $targets) {
    New-Item -ItemType Directory -Force -Path $target | Out-Null
    Copy-Item -Path (Join-Path $skillSource '*') -Destination $target -Recurse -Force
    Write-Output "Installed: $target"
}
