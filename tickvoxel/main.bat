@echo off
title Tickvoxel - Main Game

echo.
echo Enter your world name:
set /p worldName=

:Settings
cls
echo.
echo Current settings:
echo.

echo Available settings:
echo 1. Writing Frenzy
echo 2. Rolling Dice
echo 3. Green Hills
echo.

set /p settingChoice=Enter your choice (or 'C' to create the world): 

if /i "%settingChoice%"=="1" (
    echo Enabling Writing Frenzy...
    echo.
    call wf.bat
    goto Settings
) else if /i "%settingChoice%"=="2" (
    echo Enabling Rolling Dice...
    echo.
    call rd.bat
    goto Settings
) else if /i "%settingChoice%"=="3" (
    echo Enabling Green Hills...
    echo.
    call gh.bat
    goto Settings
) else if /i "%settingChoice%"=="C" (
    echo Creating the world...
    echo.

    rem Checking if the "data" folder exists
    if exist data\ (
        echo Loading frame.bat...
        cd data
        call frame.bat
    ) else (
        echo "data" folder not found. The world has been created.
    )
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto Settings
)
