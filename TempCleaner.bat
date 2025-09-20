@echo off
echo =========================================
echo      Temp Cleaner - Run as Admin
echo =========================================
echo.

:: Temp folders
del /q /f /s "%TEMP%\*" 2>nul
rd /s /q "%TEMP%" 2>nul
md "%TEMP%"

del /q /f /s "%localappdata%\Temp\*" 2>nul
rd /s /q "%localappdata%\Temp" 2>nul
md "%localappdata%\Temp"

del /q /f /s "C:\Windows\Temp\*" 2>nul
rd /s /q "C:\Windows\Temp" 2>nul
md "C:\Windows\Temp"

:: Flush DNS
ipconfig /flushdns >nul

:: Browser caches
rd /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Cache" 2>nul
rd /s /q "%localappdata%\Microsoft\Edge\User Data\Default\Code Cache" 2>nul
rd /s /q "%localappdata%\Google\Chrome\User Data\Default\Cache" 2>nul
rd /s /q "%localappdata%\Google\Chrome\User Data\Default\Code Cache" 2>nul

:: Windows Update cache
del /q /f /s "C:\Windows\SoftwareDistribution\Download\*" 2>nul
del /q /f /s "C:\Windows\SoftwareDistribution\DataStore\*" 2>nul

echo =========================================
echo           Cleanup Finished!
echo =========================================
pause
