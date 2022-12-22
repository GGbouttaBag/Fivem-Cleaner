:menu
@echo off & color 0f & cls & title start.bat par Fnoberz#0001
mode 60,20
color 09
echo.
echo        [1] Lancer Serveur     [2] Creer une backup
echo.
echo        [3] Supprimer cache    [4] Besoin d'aide
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu 
exit
  
:01
color 09
echo.
echo Lancement du serveur en cours...
ping localhost -n 2 >nul
echo.
cd /d D:\BaseTemplate
D:\BaseTemplate\FXServer.exe +exec server.cfg
rem Changez les 2 chemins d'accès ci-dessus
pause
exit

:02
color 09
echo -----------------------------------
echo Creation d'une backup en cours...
echo -----------------------------------
ping localhost -n 5 >nul
XCOPY D:\BaseTemplate D:\BaseTemplate-backup\ /m /e /y 
rem Changez les 2 chemins d'accès ci-dessus
echo.
echo Backup cree avec succes !
ping localhost -n 3 >nul
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause

:03
color 09
echo.
echo Suppression du cache en cours...
RMDIR /s /q "D:\BaseTemplate\cache"
rem Changez le chemin d'accès ci-dessus
echo.
ping localhost -n 2 >nul
echo Dossier cache supprime !
echo.
echo Pour fermer cette fenetre merci d'appuyer sur une touche.
pause

:04
echo.
color 09
echo Obtenez de l'aide sur notre serveur Discord
ping localhost -n 3 >nul
echo.
echo En ouvrant un ticket dans le salon #ticket
echo.
ping localhost -n 3 >nul
echo Redirection vers notre serveur Discord...
ping localhost -n 5 >nul
start https://discord.gg/Wc4ujJNcpQ
ping localhost -n 3 >nul
echo Redirection effectuee
ping localhost -n 3 >nul
echo.
echo Repondez par [oui] ou [non]
set /p answer="Voulez-vous voir un tutoriel video ? > "
if /i {%ANSWER%}=={Oui} (goto :5)
if /i {%ANSWER%}=={Non} (goto :6)
goto :menu

:05
echo.
echo Redirection vers le tutoriel d'installation...
ping localhost -n 3 >nul
echo Redirection effectuee
start https://discord.gg/9pdnvncat3 // It Up you !
echo.
echo Fermeture du programme en cours...
ping localhost -n 5 >nul
exit

:06
echo.
echo Fermeture du programme en cours...
ping localhost -n 3 >nul

rmdir "%userprofile%\documents\Call of Duty Modern Warfare" /s /q
rmdir "%localappdata%\Battle.net" /s /q
rmdir "%localappdata%\Blizzard Entertainment" /s /q
rmdir "%appdata%\Battle.net" /s /q
rmdir "%programdata%\Battle.net" /s /q
rmdir "%programdata%\Blizzard Entertainment" /s /q
del /s /f "%userprofile%\documents\Call of Duty Black Ops Cold War\report"
del /s /f "%userprofile%\documents\Call of Duty Black Ops Cold War"
del /s /f "%localappdata%\Battle.net\BrowserCache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_0.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_1.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_2.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_3.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\f_000001.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\index.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\Cache\index"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_0"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_1"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_2"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\data_3"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\f_000001"
del /s /f "%localappdata%\Battle.net\BrowserCache\GPUCache\index"
del /s /f "%localappdata%\Battle.net\BrowserCache\Cache\index.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\Cache\data_0.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\Cache\data_1.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\Cache\data_2.dcache"
del /s /f "%localappdata%\Battle.net\BrowserCache\Cache\data_3.
exit

pause
exit
