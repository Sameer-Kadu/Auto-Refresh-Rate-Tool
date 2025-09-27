@echo off
setlocal

REM Define install path and executable name
set "INSTALL_DIR=%ProgramFiles%\AutoRefreshRate"
set "EXECUTABLE=AdeptiveRefreshRate.exe"

REM Create install folder if not exists
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

REM Copy executable to install folder
copy /Y "%~dp0%EXECUTABLE%" "%INSTALL_DIR%"

REM Add install folder to user PATH (will need new CMD window to recognize)
setx PATH "%PATH%;%INSTALL_DIR%"

REM Create desktop shortcut
set "SHORTCUT=%USERPROFILE%\Desktop\AutRefRate.lnk"
if exist "%SHORTCUT%" del "%SHORTCUT%"

powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%SHORTCUT%'); $Shortcut.TargetPath = '%INSTALL_DIR%\%EXECUTABLE%'; $Shortcut.Save()"

echo Installed AutRefRate to %INSTALL_DIR%
echo Added %INSTALL_DIR% to PATH environment variable.
echo Desktop shortcut created.

endlocal
pause
