@echo off
title Smart Farm MQTT Broker & Dashboard
color 0A

echo ===============================================
echo        SMART FARM MANAGEMENT SYSTEM
echo ===============================================
echo.
echo Starting MQTT Broker and Dashboard...
echo.

REM Save the current directory (where the batch file and index.html are located)
set "PROJECT_DIR=%CD%"

REM Change to the Mosquitto directory
cd /d "C:\Program Files\mosquitto"

REM Check if mosquitto is already running
tasklist /FI "IMAGENAME eq mosquitto.exe" 2>NUL | find /I /N "mosquitto.exe">NUL
if "%ERRORLEVEL%"=="0" (
    echo MQTT Broker is already running!
    echo Stopping existing instance...
    taskkill /F /IM mosquitto.exe >NUL 2>&1
    timeout /t 2 /nobreak >NUL
)

REM Start Mosquitto with configuration file
echo Starting MQTT Broker...
start /MIN "" mosquitto -c mosquitto.conf

REM Wait for broker to start
echo Waiting for MQTT Broker to initialize...
timeout /t 3 /nobreak >NUL

REM Return to project directory and open the Smart Farm Dashboard
echo Opening Smart Farm Dashboard...
cd /d "%PROJECT_DIR%"

REM Open the dashboard
if exist "index.html" (
    start "" "index.html"
    echo ✓ Dashboard found and opened!
) else (
    echo Dashboard not found in project directory.
    echo Project directory: %PROJECT_DIR%
    echo.
    echo Please make sure index.html is in the same folder as this batch file.
)

echo.
echo ===============================================
echo ✓ MQTT Broker started successfully!
echo.
echo Your Smart Farm Management System is now running:
echo   - MQTT Broker: localhost:1883 (Standard) / localhost:9001 (WebSocket)
echo   - Dashboard: Smart Farm Monitoring Interface
echo.
echo Press any key to close this window...
pause >nul
