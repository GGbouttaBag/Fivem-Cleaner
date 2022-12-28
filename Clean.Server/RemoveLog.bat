@echo off
title FiveM Cleaner ::: KALASH LUA ::: https://discord.gg/MBTkVcJefp

:: Set the console text color to bright yellow
color e

:: Display the title and logo
echo ":'######::'##::::::::::'###:::::'######::'##:::'##:'########::'######::"
echo "'##... ##: ##:::::::::'## ##:::'##... ##: ##::'##:: ##.....::'##... ##:"
echo " ##:::..:: ##::::::::'##:. ##:: ##:::..:: ##:'##::: ##::::::: ##:::..::"
echo ". ######:: ##:::::::'##:::. ##: ##::::::: #####:::: ######:::. ######::"
echo ":..... ##: ##::::::: #########: ##::::::: ##. ##::: ##...:::::..... ##:"
echo "'##::: ##: ##::::::: ##.... ##: ##::: ##: ##:. ##:: ##:::::::'##::: ##:"
echo ". ######:: ########: ##:::: ##:. ######:: ##::. ##: ########:. ######::"
:......:::........::..:::::..:::......:::..::::..::........:::......:::
echo.

:: Prompt the user to press any key to continue
echo Pritisnite bilo koju tipku za brisanje FiveM predmemorije.
pause >nul

:: Clear the console window
cls

:: Display a message indicating that the cache is being deleted
echo Brisanje FiveM predmemorije...

:: Delete the cache directories
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"

:: Wait for a short period of time
timeout /t 1

:: Clear the console window and display a message indicating that the cache has been cleaned
color e
cls
echo ":'######::'##::::::::::'###:::::'######::'##:::'##:'########::'######::"
echo "'##... ##: ##:::::::::'## ##:::'##... ##: ##::'##:: ##.....::'##... ##:"
echo " ##:::..:: ##::::::::'##:. ##:: ##:::..:: ##:'##::: ##::::::: ##:::..::"
echo ". ######:: ##:::::::'##:::. ##: ##::::::: #####:::: ######:::. ######::"
echo ":..... ##: ##::::::: #########: ##::::::: ##. ##::: ##...:::::..... ##:"
echo "'##::: ##: ##::::::: ##.... ##: ##::: ##: ##:. ##:: ##:::::::'##::: ##:"
echo ". ######:: ########: ##:::: ##:. ######:: ##::. ##: ########:. ######::"

echo Ociscena FiveM predmemorija!
echo.

:: Prompt the user to press any key to exit the script
echo Pritisnite bilo koju tipku za zatvorite program.
pause >nul
