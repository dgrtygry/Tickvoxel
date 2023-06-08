@echo off
echo Green Hills enabled.
rem Checking if the "data" folder exists
if exist data\ (
    echo Loading frame.bat...
    cd data
    call frame.bat
)
