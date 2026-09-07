# GitHub Profile Repository Setup Script for Ashutosh Keshri (@Ashutoshe4678)

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host " 🚀 GitHub Profile Dashboard Repository Setup - Ashutoshe4678 " -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""

Set-Location $PSScriptRoot

# 1. Initialize Git if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "📦 Initializing local Git repository..." -ForegroundColor Yellow
    git init
    git branch -M main
} else {
    Write-Host "✔ Local Git repository already initialized." -ForegroundColor Green
}

# 2. Stage and commit files
Write-Host "💾 Staging files and creating initial commit..." -ForegroundColor Yellow
git add .
git commit -m "✨ feat: Initialize ultimate GitHub profile dashboard README & workflows"

# 3. Check for GitHub CLI (gh)
$ghInstalled = Get-Command gh -ErrorAction SilentlyContinue

if ($ghInstalled) {
    Write-Host "🐙 GitHub CLI (gh) detected!" -ForegroundColor Green
    $createRepo = Read-Host "Would you like to automatically create the repo 'Ashutoshe4678' on GitHub using 'gh'? (y/n)"
    if ($createRepo -eq 'y' -or $createRepo -eq 'Y') {
        gh repo create Ashutoshe4678 --public --source=. --remote=origin --push
        Write-Host "🎉 Repository successfully created and pushed to https://github.com/Ashutoshe4678/Ashutoshe4678 !" -ForegroundColor Green
        exit
    }
}

# Manual instructions if gh was not used or not installed
Write-Host ""
Write-Host "------------------------------------------------------------" -ForegroundColor DarkGray
Write-Host "📌 MANUAL DEPLOYMENT INSTRUCTIONS:" -ForegroundColor Yellow
Write-Host "1. Go to https://github.com/new" -ForegroundColor White
Write-Host "2. Create a public repository named exactly: Ashutoshe4678" -ForegroundColor White
Write-Host "   (Make sure NOT to initialize it with README, .gitignore, or license)" -ForegroundColor Gray
Write-Host "3. Run the following commands in your terminal:" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/Ashutoshe4678/Ashutoshe4678.git" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host "------------------------------------------------------------" -ForegroundColor DarkGray
Write-Host ""
Write-Host "✨ Done! Your GitHub profile dashboard will automatically update once pushed." -ForegroundColor Green
