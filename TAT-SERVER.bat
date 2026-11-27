@echo off
chcp 65001 >nul
cd /d "%~dp0"
taskkill /f /im node.exe >nul 2>nul
echo Da tat server.
timeout /t 2 >nul
