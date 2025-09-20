@echo off
echo =========================================
echo   🧹 Temp Cleaner - Extended
echo =========================================

:: Clean %TEMP%
del /q /f /s "%TEMP%\*" 2>nul
rd /s /q "%TEMP%" 2>nul
md "%TEMP%"

:: Clean %localappdata%\Temp
del /q /f /s "%localappdata%\Temp\*" 2>nul
rd /s /q "%localappdata%\Temp" 2>nul
md "%localappdata%\Temp"

:: Clean C:\Windows\Temp
del /q /f /s "C:\Windows\Temp\*" 2>nul
rd /s /q "C:\Windows\Temp" 2>nul
md "C:\Windows\Temp"

echo.
echo Cleanup Finished!
pause
