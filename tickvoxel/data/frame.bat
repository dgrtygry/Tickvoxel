@echo off
echo Searching for frames.bat...

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
