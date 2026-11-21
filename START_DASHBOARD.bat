@echo off
setlocal
cd /d "%~dp0"

where py >nul 2>nul
if errorlevel 1 (
    echo ERROR: Python Launcher "py" was not found.
    echo Make sure the Python Launcher is installed and available in PATH.
    pause
    exit /b 1
)

py -3 dashboard.py
set "EXIT_CODE=%ERRORLEVEL%"
if not "%EXIT_CODE%"=="0" (
    echo.
    echo Dashboard exited with error code %EXIT_CODE%.
)
pause
exit /b %EXIT_CODE%
