@echo off
title FiveM Cleaner ::: KALASH LUA ::: discord.gg/BukSCSnDjn
color e



echo "______           _                    "
echo "|  ____|         | |                  "
echo "| |__ _ __   ___ | |__   ___ _ __ ____"
echo "|  __| '_ \ / _ \| '_ \ / _ \ '__|_  /"
echo "| |  | | | | (_) | |_) |  __/ |   / / "
echo "|_|  |_| |_|\___/|_.__/ \___|_|  /___|"
echo. 
echo Pritisnite bilo koju tipku za brisanje FiveM predmemorije.
pause >nul
cls


color c
echo Brisanje FiveM predmemorije...
TIMEOUT /T 5 /nobreak
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"


TIMEOUT /T 1
color e
cls
echo "______           _                    "
echo "|  ____|         | |                  "
echo "| |__ _ __   ___ | |__   ___ _ __ ____"
echo "|  __| '_ \ / _ \| '_ \ / _ \ '__|_  /"
echo "| |  | | | | (_) | |_) |  __/ |   / / "
echo "|_|  |_| |_|\___/|_.__/ \___|_|  /___|"
echo. 
echo Ociscena FiveM predmemorija!
echo.
echo.
echo Pritisnite bilo koju tipku za zatvorite program.
pause >nul
