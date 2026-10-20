# ゲームを更新して GitHub に公開し直す（OneDrive の apexrange.html をコピーして push）
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
Copy-Item "$env:USERPROFILE\OneDrive\Games\apexrange.html" "$PSScriptRoot\index.html" -Force
git add -A
git commit -m "ゲームを更新" | Out-Null
git push
Write-Host '公開しました（反映まで 1〜2 分かかります）'
