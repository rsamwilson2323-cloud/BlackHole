@echo off
title Black Hole Launcher
color 0D
cls

echo.
echo  =============================================
echo    BLACK HOLE - Mouse Gravity Effect
echo  =============================================
echo.

:: Get the folder where this .bat file is located
set "DIR=%~dp0"
set "HTML=%DIR%blackhole.html"

:: Check if the HTML file exists
if not exist "%HTML%" (
    echo  [ERROR] blackhole.html not found!
    echo  Make sure both files are in the same folder.
    echo.
    pause
    exit /b 1
)

echo  Opening Black Hole in your browser...
echo.
echo  Controls:
echo    - Move your MOUSE to control the black hole
echo    - Press ESC to pause / resume
echo    - Use the sliders to change Size and Pull
echo.
echo  Press any key to launch...
pause >nul

:: Open in default browser (works on all Windows versions)
start "" "%HTML%"

echo.
echo  Launched! Enjoy the black hole.
echo  You can close this window now.
echo.
timeout /t 3 >nul
exit
