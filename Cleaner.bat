@echo off
echo =========================================
echo   🧹 Basic Temp Cleaner
echo =========================================

del /q /f /s "%TEMP%\*" 2>nul
rd /s /q "%TEMP%" 2>nul
md "%TEMP%"

echo.
echo Cleanup Finished!
pause
