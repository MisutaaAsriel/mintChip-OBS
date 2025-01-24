@echo off
@setlocal enableextensions
@cd /d "%~dp0"

echo Checking for theme directory...
mkdir "%APPDATA%\obs-studio\themes\"

echo.
echo Copying theme...
COPY /V /Y "%CD%\mintChip.obt" "%APPDATA%\obs-studio\themes\"
echo.
echo Copying Assets...
XCOPY /E /I /F /Y "%CD%\Mintchip" "%APPDATA%\obs-studio\themes\Mintchip"

echo.
echo Press any key to exit...
PAUSE > NUL