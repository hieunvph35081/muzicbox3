@echo off
chcp 65001 >nul
title Karaoke Manager - Server
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo [LOI] Chua cai Node.js. Tai ban LTS tai https://nodejs.org roi chay lai file nay.
  pause
  exit /b
)

if not exist node_modules (
  echo Lan dau chay: dang cai thu vien, vui long doi...
  call npm install
  if errorlevel 1 (
    echo [LOI] Cai thu vien that bai. Kiem tra mang roi chay lai.
    pause
    exit /b
  )
)

echo Dang mo trinh duyet...
start "" cmd /c "timeout /t 3 >nul & start http://localhost:3000/quan-ly"

:chay
echo.
echo ===== Server dang chay. DUNG TAT cua so nay khi dang su dung app =====
node server.js
echo.
echo [!] Server da dung. Tu khoi dong lai sau 5 giay... (dong cua so de thoat)
timeout /t 5 >nul
goto chay
