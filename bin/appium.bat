REM @echo off
set BROWSERCODE=%1
if "%BROWSERCODE:~0,4%"=="sim." (
   echo launching simulator %BROWSERCODE:~4,99% with appium running at port 47%BUILD_NUMBER:~-2%
   start node appium.js --session-override --avd %BROWSERCODE:~4,99%--port 47%BUILD_NUMBER:~-2%
) else (
   echo launching device %BROWSERCODE:~4,99% with appium running at port 47%BUILD_NUMBER:~-2%
   start node appium.js --session-override --udid %BROWSERCODE:~4,99% --port 47%BUILD_NUMBER:~-2%
)
