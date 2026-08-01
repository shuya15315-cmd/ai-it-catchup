@echo off
rem === Update the AI / IT catch-up dashboard now ===
rem (Normally it auto-updates weekly on Monday 8:00. Double-click this only when you want it right now.)
chcp 65001 >nul
echo Collecting the latest AI / IT info. This takes a few minutes. Please keep this window open...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0update.ps1"
echo.
echo Done. Reopen index.html to see the latest.
pause
