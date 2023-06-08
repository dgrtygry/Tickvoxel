@echo off
echo Writing Frenzy enabled.
rem Checking if the "data" folder exists
if exist data\ (
    echo Loading frame.bat...
    cd data
    call frame.bat
)
