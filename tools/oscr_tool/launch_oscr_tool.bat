@echo off
powershell.exe Unblock-File -Path oscr_tool.ps1
powershell.exe -ExecutionPolicy RemoteSigned -File oscr_tool.ps1
if errorlevel 1 (
    echo.
    echo [ERROR] Script failed. Press any key to continue...
    pause >nul
)