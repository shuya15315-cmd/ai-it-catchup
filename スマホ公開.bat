@echo off
rem ============================================================
rem  Publish this dashboard to GitHub Pages so you can open it
rem  on your phone.  Run this ONCE (double-click).
rem  - Uploads this folder to a PUBLIC GitHub repo
rem  - Turns on GitHub Pages
rem  gh (GitHub CLI) must be logged in.  It already is on this PC.
rem  Contents are public info only (AI news / terms / tools).
rem ============================================================
chcp 65001 >nul
cd /d "%~dp0"

echo [1/2] Creating public GitHub repo and uploading...
gh repo create shuya15315-cmd/ai-it-catchup --public --source=. --remote origin --push --description "AI-IT catch-up dashboard (weekly auto update, public info only)"
if errorlevel 1 goto :err

echo.
echo [2/2] Turning on GitHub Pages...
gh api --method POST repos/shuya15315-cmd/ai-it-catchup/pages -f "source[branch]=main" -f "source[path]=/"
rem (If Pages was already on, the line above may show an error - that is OK.)

echo.
echo ============================================================
echo  DONE!  Open this URL on your phone (wait 1-2 minutes first):
echo.
echo      https://shuya15315-cmd.github.io/ai-it-catchup/
echo.
echo  On the phone browser:  Share  ->  Add to Home Screen
echo  = an app-like icon you can tap anytime.
echo.
echo  If the page does not load after a few minutes, open the
echo  repo on github.com  ->  Settings  ->  Pages, and set
echo  Branch = main , folder = / (root) , then Save.
echo ============================================================
pause
goto :end

:err
echo.
echo [ERROR] Upload failed.
echo Open a terminal (PowerShell) and run:   gh auth status
echo Make sure it says "Logged in ... shuya15315-cmd", then run this file again.
pause

:end
