@echo off
REM Quick launcher for Smart Greenhouse Dashboard
cls
echo.
echo ========================================
echo   Smart Greenhouse Dashboard
echo ========================================
echo.
echo Choose an option:
echo.
echo [1] Open Dashboard (Simple - just open in browser)
echo [2] Start Web Server (Recommended)
echo [3] Test MQTT Connection
echo [4] Exit
echo.
choice /c 1234 /n /m "Enter your choice (1-4): "

if errorlevel 4 exit
if errorlevel 3 goto test
if errorlevel 2 goto server
if errorlevel 1 goto simple

:simple
echo.
echo Opening dashboard in browser...
start index.html
goto end

:server
echo.
call scripts\start-server.bat
goto end

:test
echo.
call scripts\test-mqtt.bat
goto end

:end
echo.
pause

