# Push this project to https://github.com/chaitu0-12/to-do-.git
# Run in a NEW PowerShell window (not inside Cursor) so git uses this folder only:
#   cd "c:\Users\Dell\OneDrive\Desktop\to-do\todo-app"
#   .\push-to-github.ps1
# If .git already exists here and push fails, delete the .git folder first, then run again.

$ErrorActionPreference = "Stop"
$repoRoot = $PSScriptRoot
Set-Location $repoRoot

# Ensure we don't use a parent repo (e.g. C:\Users\Dell)
$env:GIT_DIR = $null
$env:GIT_WORK_TREE = $null

if (Test-Path ".git") {
    Write-Host "Removing existing .git ..."
    Remove-Item -Recurse -Force ".git"
}
git init
git add .
git commit -m "Initial commit: Todo app - Spring Boot backend + React frontend"
git remote add origin https://github.com/chaitu0-12/to-do-.git
git branch -M main
git push -u origin main
Write-Host "Done. Pushed to https://github.com/chaitu0-12/to-do-.git" -ForegroundColor Green
