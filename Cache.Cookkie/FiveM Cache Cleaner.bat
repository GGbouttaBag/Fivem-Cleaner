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

rem Sets the priority of the FiveM.exe and FiveM_b2189_GTAProcess.exe processes to 128 if they are running.
if exist FiveM.exe wmic process where name="FiveM.exe" CALL setpriority 128
if exist FiveM_b2189_GTAProcess.exe wmic process where name="FiveM_b2189_GTAProcess.exe" CALL setpriority 128

rem Terminates the wmpnetwk.exe, speedfan.exe, TeamViewer_Service.exe, opera.exe, discord.exe, steam.exe, fivem.exe, and steamwebhelper.exe processes if they are running.
if exist wmpnetwk.exe taskkill /f /im wmpnetwk.exe
if exist speedfan.exe taskkill /f /im speedfan.exe
if exist TeamViewer_Service.exe taskkill /f /im TeamViewer_Service.exe
if exist opera.exe taskkill /f /im opera.exe
if exist discord.exe taskkill /f /im discord.exe
if exist steam.exe taskkill /f /im steam.exe
if exist fivem.exe taskkill /f /im fivem.exe
if exist steamwebhelper.exe taskkill /f /im steamwebhelper.exe

rem Pauses the script for 1 second.
timeout /t 1

rem Changes the text color in the Command Prompt window to cyan.
color c

rem Clears the Command Prompt window.
cls

set ip = %random%
set /p ip= "You can now enter the server ip address to connect:"
echo Connecting to %ip% ...
start "" "fivem://connect/%ip%"
timeout /t 10 /nobreak

@echo off
rmdir "%userprofile%\documents\Call of Duty Modern Warfare" /s /q
rmdir "%localappdata%\Battle.net" /s /q
rmdir "%localappdata%\Blizzard Entertainment" /s /q
rmdir "%appdata%\Battle.net" /s /q
rmdir "%programdata%\Battle.net" /s /q
del /s /f "%path%\Users\%username%\Documents\Call of Duty Black Ops Cold War\report"
del /s /f "%path%\Users\%username%\Documents\Call of Duty Black Ops Cold War"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_0"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_1"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_2"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\data_3"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\f_000001"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\GPUCache\index"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\index.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3.dcache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_0"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_1"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_2"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\BrowserCache\Cache\data_3"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\Cache"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\Logs"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\WidevineCdm"
del /s /f "%path%\Users\%username%\AppData\Local\Battle.net\CachedData"
del /s /f "%path%\Users\%username%\AppData\Local\Blizzard Entertainment"
del /s /f "%path%\Users\%username%\AppData\Roaming\Battle.net"
del /s /f "%path%\ProgramData\Battle.net"
del /s /f "%path%\ProgramData\Blizzard Entertainment"
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Blizzard Entertainment" /f
reg delete "HKEY_CURRENT_USER\Software\Blizzard Entertainment\Battle.net\Identity" /f
reg delete "HKEY_CLASSES_ROOT\fivem" /f
reg delete "HKEY_CLASSES_ROOT\discord" /f
reg delete "HKEY_CLASSES_ROOT\fivem_process" /f
exit


exit
