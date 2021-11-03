@echo off
title Adobe Starter
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd "C:\Program Files\Adobe"
cls

:start
echo.
echo    /////////////////////
echo   //  Adobe Starter  //
echo  /////////////////////
echo.
echo This is a Simple Script to start and Kill Adobe Programs.
echo.
goto select_menu

:select_menu
echo 1 = Start an Program
echo 2 = Kill all Processes
echo.
goto select

:select
set /p c=Select your Option: 
if "%c%" LSS "1" goto select
if "%c%" GTR "2" goto select
if "%c%"=="1" goto product
if "%c%"=="2" goto kill

:product
cls
echo.
echo Which one do you want to start:
echo.
echo 1 = Photoshop
echo 2 = Media Encoder
echo 3 = Premiere Pro
echo.
goto select_1

:select_1
set /p c=Select your Option: 
if "%c%" LSS "1" goto select_1
if "%c%" GTR "3" goto select_1
if "%c%"=="1" goto photoshop
if "%c%"=="2" goto encoder
if "%c%"=="3" goto premiere

:photoshop
echo.
echo Starting Photoshop...
start "" "photoshop.exe"
cls
echo.
echo Photoshop started Sucessfully!
echo.
goto select_menu

:encoder
echo.
echo Starting Media Encoder...
start "" "Adobe Media Encoder.exe"
cls
echo.
echo Media Encoder started Sucessfully!
echo.
goto select_menu

:premiere
echo.
echo Starting Premiere Pro...
start "" "Adobe Premiere Pro.exe"
cls
echo.
echo Premiere Pro started Sucessfully!
echo.
goto select_menu

:kill
echo.
echo Killing all Processes...
echo.
taskkill /F /IM "Adobe Premiere Pro.exe"
taskkill /F /IM "Adobe Media Encoder.exe"
taskkill /F /IM "photoshop.exe"
taskkill /F /IM "AdobeIPCBroker.exe"
taskkill /F /IM "AdobeNotificationClient.exe"
taskkill /F /IM "AdobeUpdateService.exe"
taskkill /F /IM "CCLibrary.exe"
taskkill /F /IM "CCXProcess.exe"
taskkill /F /IM "Adobe CEF Helper.exe"
taskkill /F /IM "Adobe Desktop Service.exe"
taskkill /F /IM "Creative Cloud Helper.exe"
taskkill /F /IM "Creative Cloud.exe"
taskkill /F /IM "CoreSync.exe"
goto run_2

:run_2
rem just in case that not all processes where closed in the first run
taskkill /F /IM "Adobe Premiere Pro.exe"
taskkill /F /IM "Adobe Media Encoder.exe"
taskkill /F /IM "photoshop.exe"
taskkill /F /IM "AdobeIPCBroker.exe"
taskkill /F /IM "AdobeNotificationClient.exe"
taskkill /F /IM "AdobeUpdateService.exe"
taskkill /F /IM "CCLibrary.exe"
taskkill /F /IM "CCXProcess.exe"
taskkill /F /IM "Adobe CEF Helper.exe"
taskkill /F /IM "Adobe Desktop Service.exe"
taskkill /F /IM "Creative Cloud Helper.exe"
taskkill /F /IM "Creative Cloud.exe"
taskkill /F /IM "CoreSync.exe"
cls
echo.
echo Done!
echo.
goto select_menu
