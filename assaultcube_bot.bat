@echo off
cd /d "%~dp0"

if not exist "bin_win32\ac_bot.exe" (
    echo No se encuentra bin_win32\ac_bot.exe
    pause
    exit /b 1
)

start "" /wait "bin_win32\ac_bot.exe" ^
    --bot ^
    --bot-connect=127.0.0.1 ^
    --bot-port=28763 ^
    --bot-name=localbot

echo.
echo El bot ha terminado. Log: profile\clientlog.txt
if exist "profile\clientlog.txt" (
    powershell -NoProfile -Command "Get-Content 'profile\clientlog.txt' -Tail 40"
)
pause
