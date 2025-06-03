@echo off
setlocal enabledelayedexpansion

:: Roep PowerShell script aan, sla output op in variabele
for /f "delims=" %%A in ('powershell -NoProfile -ExecutionPolicy Bypass -File generate_commit_msg.ps1') do (
    set "result=%%A"
)

echo Commit message: %result%

git add .
git commit -m "%result%"
git push origin main
