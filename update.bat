@echo off
REM Genereer nette commit message via PowerShell

for /f "delims=" %%i in ('powershell -Command "((git diff --name-status) ^| ForEach-Object { $parts = $_ -split \"`t\"; switch ($parts[0]) { 'A' { \"added $($parts[1])\" }; 'M' { \"updated $($parts[1])\" }; 'D' { \"deleted $($parts[1])\" }; default { \"$($parts[0]) $($parts[1])\" } } }) -join ', '"') do set msg=%%i

REM Check of er iets is om te committen
git diff --cached --quiet
if %errorlevel%==0 (
    echo Geen wijzigingen om te committen 😴
    exit /b
)

@echo on
REM Commit en push
git add .
git commit -m "Update: %msg%"
git push origin main
