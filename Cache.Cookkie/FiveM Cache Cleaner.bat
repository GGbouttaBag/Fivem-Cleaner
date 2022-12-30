@echo off
title FiveM Tools - Slackes - https://discord.gg/MBTkVcJefp
color c

echo You Need a FiveM Anticheat ? Slackes : https://discord.gg/MBTkVcJefp
echo Press any key to optimize FiveM and clear the cache
pause >nul
cls

echo Clearing FiveM Cache...

rem Remove the browser cache directory
if exist "%LocalAppData%\FiveM\FiveM.app\cache\browser" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\browser"
)

rem Remove the database cache directory
if exist "%LocalAppData%\FiveM\FiveM.app\cache\db" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\db"
)

rem Remove the priv cache directory
if exist "%LocalAppData%\FiveM\FiveM.app\cache\priv" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\priv"
)

rem Remove the servers cache directory
if exist "%LocalAppData%\FiveM\FiveM.app\cache\servers" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\servers"
)

rem Remove the subprocess cache directory
if exist "%LocalAppData%\FiveM\FiveM.app\cache\subprocess" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\subprocess"
)

rem Remove the unconfirmed cache directory
if exist "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\cache\unconfirmed"
)

rem Delete the crashometry file
if exist "%LocalAppData%\FiveM\FiveM.app\crashometry" (
  del /s /q /f "%LocalAppData%\FiveM\FiveM.app\crashometry"
)

rem Delete the launcher_skip_mtl2 file
if exist "%LocalAppData%\FiveM\FiveM.app\launcher_skip_mtl2" (
  del /s /q /f "%LocalAppData%\FiveM\FiveM.app\launcher_skip_mtl2"
)

rem Delete the session file
if exist "%LocalAppData%\FiveM\FiveM.app\session" (
  del /s /q /f "%LocalAppData%\FiveM\FiveM.app\session"
)

rem Remove the plugins directory
if exist "%LocalAppData%\FiveM\FiveM.app\plugins" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\plugins"
)

rem Remove the mods directory
if exist "%LocalAppData%\FiveM\FiveM.app\mods" (
  rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\mods"
)


rem Terminates the GTAVLauncher.exe process if it is running.
if exist GTAVLauncher.exe taskkill /f /im GTAVLauncher.exe

rem Terminates the Explorer.exe process if it is running.
if exist explorer.exe taskkill /IM explorer.exe /F

rem Check if the FiveM.exe and FiveM_b2189_GTAProcess.exe processes are running
if exist FiveM.exe (
  rem Set the priority of the FiveM.exe process to 128
  wmic process where name="FiveM.exe" CALL setpriority 128
) else (
  echo FiveM.exe is not running.
)

if exist FiveM_b2189_GTAProcess.exe (
  rem Set the priority of the FiveM_b2189_GTAProcess.exe process to 128
  wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128
) else (
  echo FiveM_b2189_GTAProcess.exe is not running.
)

rem Terminate the wmpnetwk.exe, speedfan.exe, TeamViewer_Service.exe, opera.exe, discord.exe, steam.exe, fivem.exe, and steamwebhelper.exe processes if they are running
if exist wmpnetwk.exe (
  taskkill /f /im wmpnetwk.exe
) else (
  echo wmpnetwk.exe is not running.
)

if exist speedfan.exe (
  taskkill /f /im speedfan.exe
) else (
  echo speedfan.exe is not running.
)

if exist TeamViewer_Service.exe (
  taskkill /f /im TeamViewer_Service.exe
) else (
  echo TeamViewer_Service.exe is not running.
)

if exist opera.exe (
  taskkill /f /im opera.exe
) else (
  echo opera.exe is not running.
)

if exist discord.exe (
  taskkill /f /im discord.exe
) else (
  echo discord.exe is not running.
)

if exist steam.exe (
  taskkill /f /im steam.exe
) else (
  echo steam.exe is not running.
)

if exist fivem.exe (
  taskkill /f /im fivem.exe
) else (
  echo fivem.exe is not running.
)

if exist steamwebhelper.exe (
  taskkill /f /im steamwebhelper.exe
) else (
  echo steamwebhelper.exe is not running.
)

echo Done.
rem Pauses the script for 1 second.
timeout /t 1

rem Changes the text color in the Command Prompt window to cyan.
color c

rem Clears the Command Prompt window.
cls

rem Check if FiveM is installed
if not exist "C:\Program Files\Citizen\FiveM\FiveM.exe" (
  echo FiveM is not installed on this system. Please install FiveM before running this script.
  goto :EOF
)

:input_loop
set /p ip=Enter the server IP address to connect: 
if "%ip%"=="" (
  echo You must enter a valid IP address.
  goto :input_loop
)

echo Connecting to %ip% ...
start "" "fivem://connect/%ip%"

:timeout_loop
timeout /t 10 >nul
if not exist "C:\Program Files\Citizen\FiveM\FiveM.exe" (
  echo Connection to %ip% failed.
  goto :EOF
)
goto :timeout_loop

echo This script will delete certain directories and files related to the Call of Duty Modern Warfare and Call of Duty Black Ops Cold War video games.
echo Please make sure you have backed up any important data before running this script.
echo.
echo Are you sure you want to continue? (Y/N)
set /p confirm=
if /i {%confirm%} == {Y} goto continue
if /i {%confirm%} == {N} goto end
echo Invalid input. Exiting script.
goto end

:continue

echo Deleting directories and files...

rmdir "%userprofile%\documents\Call of Duty Modern Warfare" /s /q 2>nul
rmdir "%localappdata%\Battle.net" /s /q 2>nul
rmdir "%localappdata%\Blizzard Entertainment" /s /q 2>nul
rmdir "%appdata%\Battle.net" /s /q 2>nul
rmdir "%programdata%\Battle.net" /s /q 2>nul
del /s /f "%path%\Users\%username%\Documents\Call of Duty Black Ops Cold War\report" 2>nul
del /s /f "%path%\Users\%username%\Documents\Call of Duty Black Ops Cold War" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0.dcache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1.dcache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2.dcache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3.dcache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001.dcache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index.dcache" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1" 2>nul
del /s /f "%path%\Users\%username%\AppData\Local\


exit
