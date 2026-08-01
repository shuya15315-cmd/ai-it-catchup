@echo off
rem === Set up the AI / IT catch-up dashboard on this PC ===
rem Registers the weekly auto-update task and a desktop shortcut.
rem Run this once, and re-run it whenever you move this folder.
chcp 65001 >nul
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0setup.ps1"
