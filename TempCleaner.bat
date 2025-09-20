@echo off
title Temp Cleaner - @shortageofname
color 0A

echo =========================================
echo      Temp Cleaner - Run as Admin
echo =========================================
echo.

:: --- Cleaning TEMP folders ---
echo "[1/7] Cleaning %TEMP% folder..."
del /q /f /s "%TEMP%\*" 2>nul
rd /s /q "%TEMP%" 2>nul
md "%TEMP%"
echo Done.
echo.

echo "[2/7] Cleaning %LocalAppData%\Temp..."
del /q /f /s "%localappdata%\Temp\*" 2>nul
rd /s /q "%localappdata%\Temp" 2>nul
md "%localappdata%\Temp"
echo Done.
echo.

echo "[3/7] Cleaning C:\Windows\Temp..."
del /q /f /s "C:\Windows\Temp\*" 2>nul
rd /s /q "C:\Windows\Temp" 2>nul
md "C:\Windows\Temp"
echo Done.
echo.

:: --- Flush DNS ---
echo "[4/7] Flushing DNS cache..."
ipconfig /flushdns >nul
echo Done.
echo.

:: --- Browser Caches ---
echo "[5/7] Clearing Edge & Chrome caches..."

rd /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache" >nul 2>&1
rd /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Code Cache" >nul 2>&1
rd /s /q "%localappdata%\Google\Chrome\User Data\Default\Cache" >nul 2>&1
rd /s /q "%localappdata%\Google\Chrome\User Data\Default\Code Cache" >nul 2>&1

echo Done.
echo.


:: --- Windows Update Cache ---
echo "[6/7] Cleaning Windows Update cache..."
del /q /f /s "C:\Windows\SoftwareDistribution\Download\*" 2>nul
del /q /f /s "C:\Windows\SoftwareDistribution\DataStore\*" 2>nul
echo Done.
echo.

:: --- Run background maintenance tasks ---
echo "[7/7] Running background system maintenance..."
start "" rundll32.exe advapi32.dll,ProcessIdleTasks
echo Done.
echo.

echo =========================================
echo           Cleanup Finished!
echo =========================================
pause
