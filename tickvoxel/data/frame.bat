@echo off
setlocal enabledelayedexpansion

echo Searching for world files...

echo.
echo Press "E" to go back to the title screen.
pause
set /p input=
if input == 1 call frames.bat
if input == E call menu.bat

endlocal
