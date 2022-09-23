echo off
taskkill / f / im Steam.exe / t
cls
rmdir / s / q % LocalAppData%\DigitalEntitlements
taskkill / f / im Steam.exe / t
cls
rmdir / s / q % userprofile %\AppData\Roaming\CitizenFX
taskkill / f / im Steam.exe / t
cls
set hostspath =% windir %\System32\drivers\etc\hosts
cls
echo 127.0.0.1 xboxlive.com >> % hostspath %
cls
echo 127.0.0.1 user.auth.xboxlive.com >> % hostspath %
cls
echo 127.0.0.1 presence - heartbeat.xboxlive.com >> % hostspath %
cls
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\HardwareID / f
cls
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing\Store / f
cls
DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory / f
cls
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S - 1 - 5 - 21 - 1282084573 - 1681065996 - 3115981261 - 1001 / va / f
cls
REG DELETEH KEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView / f
cls
REG DELETEH KEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache / f
cls
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory / f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched / f
cls
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache / f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView / f
cls
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S - 1 - 5 - 21 - 332004695 - 2829936588 - 140372829 - 1002 / f
cls
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache / f
cls
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache / f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store / f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched / f
cls
REG DELETE HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\bam\State\UserSettings\S - 1 - 5 - 21 - 1282084573 - 1681065996 - 3115981261 - 1001 / f
cls
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched / f
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_chrome.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_game.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_game_372.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_game_1604.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_game_1868.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_game_2060.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX_SubProcess_game_2189.bin
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\botan.dll
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\asi - five.dll
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\steam.dll
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\steam_api64.dll
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenGame.dll
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\profiles.dll
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\cfx_curl_x86_64.dll
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\CitizenFX.ini
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\caches.XML
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\adhesive.dll
cls
taskkill / f / im Steam.exe / t
cls
del / s / q / f % LocalAppData %\FiveM\FiveM.app\discord.dll
cls
RENAME % userprofile %\AppData\Roaming\discord\0.0.309\modules\discord_rpc Gp8n0I3Nu1iiJzwGA
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\Browser
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\db
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\dunno
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\priv
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\servers
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\subprocess
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\unconfirmed
cls
rmdir / s / q %LocalAppData%\FiveM\FiveM.app\cache\authbrowser
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\cache\crashometry
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\cache\launcher_skip
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\cache\launcher_skip_mtl2
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\crashes\*.* 
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\logs\*.* 
cls
del / s / q / f %LocalAppData%\FiveM\FiveM.app\mods\*.* 
:folderclean
call :getDiscordVersion
cls
goto :xboxclean
: getDiscordVersion
for / d %% a in (' % appdata%\Discord\*') do (
     set 'varLoc =%%a'
   goto :d1
)
:d1
for / f 'delims =\ tokens=7' %% z in ('echo %varLoc%') do (
     set 'discordVersion =%%z'
)
goto :EOF
: xboxclean
 cls
powershell - Command ' & {Get-AppxPackage -AllUsers xbox | Remove-AppxPackage}'
sc stop XblAuthManager
sc stop XblGameSave
sc stop XboxNetApiSvc
sc stop XboxGipSvc
sc delete XblAuthManager
sc delete XblGameSave
sc delete XboxNetApiSvc
sc delete XboxGipSvc

del "C:\Windows\TEMP\206F3FDC-B1A8-4FD6-BDB8-6CFE76122873",
del "C:\ProgramData\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Windows.old\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Users\All Users\Microsoft\Windows\WER\Temp\WER95DF.tmp.mdmp",
del "C:\Windows\CbsTemp\30780525_1668355464",
del "C:\Windows\TEMP\6E04EF32-0387-48B1-B812-AC2BBA90A8D0",
del "C:\Users\%username%\AppData\Local\EpicGamesLauncher\Saved\webcache\Cookies",
del "C:\Users\%username%\AppData\Local\NVIDIA Corporation\GfeSDK\FORTNI~1.LOG",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\siphon-1024x512-4cc0ff3407053325e353c4aea55fb30316e6ecf6.jpg",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Squad_ModeTile-1024x512-c543a187ce733be5ee9f6d17bfb74fb1f2e15f4a.jpg",
del "C:\Program Files\Epic Games\Fortnite\FortniteGame\PersistentDownloadDir\CMS\Files\9A71EB4A90946A4A0DCD9B7D82F48C55B49D0880\Fortnite%2Ffortnite-game%2Ftournaments%2F11BR_Arena_ModeTiles_Solo_ModeTile-1024x512-6cee09d7bcf82ce3f32ca7c77ca04948121ce617.jpg",
del "C:\Users\%username%\AppData\Local\Microsoft\Windows\WebCache\V0100024.log",
del "C:\Users\All Users\Microsoft\Windows\WER\Temp\WER5CC2.tmp.xml",
del "C:\Windows.old\Users\All Users\Microsoft\Windows\WER\Temp\WER6D21.tmp.WERInternalMetadata.xml",
del "C:\Users\%username%\AppData\Local\Temp\ecache.bin",
del "C:\Users\%username%\AppData\Local\CrashDumps\BACKGR~2.DMP",
del "C:\Windows\prefetch\ATTRIB.EXE-58A07CAF.pf",
del "C:\Windows\prefetch\AgRobust.db",
del "C:\Users\%username%\AppData\Local\Microsoft\Feeds Cache",
del "C:\Windows\prefetch\CEPHTMLENGINE.EXE-E15640BA.pf",
del "C:\Windows\prefetch\CMD.EXE-0BD30981.pf",
del "C:\Windows\prefetch\CLIPUP.EXE-4C5C7B66.pf",
del "C:\Windows\prefetch\D3D9TEST.EXE-1B86F3FC.pf",
del "C:\Windows\prefetch\DISCORD.EXE-6BEBC47C.pf",
del "C:\Windows\prefetch\EPICGAMESLAUNCHER.EXE-FAB85FF0.pf",
del "C:\Windows\prefetch\EPICGAMESLAUNCHER.EXE-018FC121.pf",
del "C:\Windows\prefetch\GET-GRAPHICS-OFFSETS64.EXE-2BCB2EA4.pf",
del "C:\Windows\prefetch\GET-GRAPHICS-OFFSETS32.EXE-D4C865E3.pf",
del "C:\Windows\prefetch\OBS64.EXE-2B6570C7.pf",
del "C:\Windows\prefetch\OBS-FFMPEG-MUX.EXE-1C01271A.pf",
del "C:\Windows\prefetch\OBS-FFMPEG-MUX.EXE-1C01271A.pf",
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardManufacturer /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardProduct /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BaseBoardVersion /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v BIOSVersion /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemFamily /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemManufacturer /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemSKU /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemVersion /t REG_SZ /d opensource-%random% /f
REG ADD HKLM\HARDWARE\DESCRIPTION\System\BIOS /v SystemProductName /t REG_SZ /d opensource-%random% /f
pause
GOTO:menuLOOP

:colorEZ
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
GOTO:EOF
