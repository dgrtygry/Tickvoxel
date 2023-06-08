@echo off
setlocal enabledelayedexpansion

:title
cls
echo --- Inventory ---

:search
echo Available objects to search: Lava, Water, Ice, Elements, Bricks, Houses, Stones, Earth Materials, Game Functions

set "searchItem="
set /p "searchItem=Enter item to search (or press Enter to exit): "
if not defined searchItem goto :exit

echo Searching for "%searchItem%"...

if /i "%searchItem%"=="lava" (
    echo Lava:
    echo - Hot molten rock.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="water" (
    echo Water:
    echo - Clear liquid H2O.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="ice" (
    echo Ice:
    echo - Frozen water.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="elements" (
    echo Elements:
    echo - Basic substances from which everything is made.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="bricks" (
    echo Bricks:
    echo - Rectangular building blocks made of clay or concrete.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="houses" (
    echo Houses:
    echo - Structures for human habitation.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="stones" (
    echo Stones:
    echo - Solid mineral materials.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="earth materials" (
    echo Earth Materials:
    echo - Various substances found on Earth's surface.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else if /i "%searchItem%"=="game functions" (
    echo Game Functions:
    echo - Code logic and mechanics of the game.
    echo.

    echo Press any key to continue...
    pause >nul
    call frame.bat
) else (
    echo Item not found. Please try again.
    echo.
    goto :search
)

goto :title

:exit
endlocal
