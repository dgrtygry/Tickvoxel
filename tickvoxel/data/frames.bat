@echo off

:loop
call frames1.bat
call frames2.bat
call frames3.bat

rem Check if the "I" key is pressed
if defined iKey (
    echo Opening inventory...
    call inventory.bat
    set "iKey="
) else (
    echo Press "I" for inventory...
    choice /c i /n >nul
    if errorlevel 1 (
        set "iKey=1"
    )
)

goto loop
