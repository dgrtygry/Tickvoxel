@echo off
title Tickvoxel - Game Title

:TitleScreen
cls
echo.
echo      Tickvoxel
echo.
echo      1. Play
echo      2. Settings
echo      3. Exit
echo.
set /p choice=Enter your choice: 

if "%choice%"=="1" (
    echo.
    echo    World Creation Screen
    echo.
    echo    Would you like to create a world?
    echo.
    echo    1. Yes
    echo    2. No
    echo.
    set /p worldChoice=Enter your choice: 

    if "%worldChoice%"=="1" (
        echo Loading the game...
        echo.
        echo    Loading...
        echo.
        timeout /t 2 >nul
        call main.bat
        goto TitleScreen
    ) else if "%worldChoice%"=="2" (
        goto TitleScreen
    ) else (
        echo Invalid choice. Returning to the title screen...
        timeout /t 2 >nul
        goto TitleScreen
    )
) else if "%choice%"=="2" (
    echo Opening settings...
    call settings.bat
    goto TitleScreen
) else if "%choice%"=="3" (
    echo Exiting...
    exit
) else (
    echo Invalid choice. Please try again.
    timeout /t 2 >nul
    goto TitleScreen
)
