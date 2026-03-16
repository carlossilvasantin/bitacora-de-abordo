$diaryPath = Join-Path $PSScriptRoot "..\diario.md"
$outputPath = Join-Path $PSScriptRoot "data.js"

if (-not (Test-Path $diaryPath)) {
  throw "No se encontro diario.md en la raiz del proyecto."
}

$content = Get-Content -Raw -Path $diaryPath
$escaped = $content -replace '`', '``'
$script = @"
window.DIARY_SOURCE = String.raw`$escaped`;
"@

Set-Content -Path $outputPath -Value $script -Encoding UTF8
Write-Output "Diario sincronizado en $outputPath"
