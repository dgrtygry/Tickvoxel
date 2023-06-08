@echo off
setlocal enabledelayedexpansion

echo Searching for frames.bat...

:search_frames
setlocal enabledelayedexpansion

rem Variables to store the highest frame number and corresponding file name
set highestFrame=0
set highestFrameFile=

rem Loop through all frames.bat files in the "data" directory
for /r "data" %%F in (frames*.bat) do (
    rem Extract the frame number from the file name
    set "fileName=%%~nF"
    set "frameNumber=!fileName:frames=!"

    rem Check if the current frame number is higher than the highestFrame
    if !frameNumber! gtr !highestFrame! (
        set highestFrame=!frameNumber!
        set highestFrameFile=%%F
    )
)

rem Check if any frames.bat file was found
if defined highestFrameFile (
    echo Loading frames!highestFrame!.bat...
    call "!highestFrameFile!"
) else (
    echo No frames.bat files found.
)

endlocal

:check_input
setlocal enabledelayedexpansion

echo.
echo Press "E" to go back to the title screen.

set "input="
set /p "input="
if /i "!input!"=="E" (
    cd ..
    call title.bat
) else (
    goto check_input
)

endlocal
