@echo off
Title Print Spooler Utility
REM Written by Lixdel Louisse Aggabao

:menu
echo *************************************
echo *      1. test network adaptor
echo *      2. show network information
echo *      3. release IP
echo *      4. renew IP
echo *      5. flush DNS
echo *      6. stop print service
echo *      7. start print service
echo *      8. get whoami information
echo *
echo * Press q to quit this batch file
echo *************************************
echo:
set /p choice="Enter the number of the operation you wish to run: "

if "%choice%"=="1" goto one
if "%choice%"=="2" goto two
if "%choice%"=="3" goto three
if "%choice%"=="4" goto four
if "%choice%"=="5" goto five
if "%choice%"=="6" goto six
if "%choice%"=="7" goto seven
if "%choice%"=="8" goto eight
if "%choice%"=="q" goto end

:one
ping 127.0.0.1
pause
goto menu

:two
ipconfig
pause
goto menu

:three
ipconfig /release
pause
goto menu

:four
ipconfig /renew
pause
goto menu

:five
ipconfig /flushdns
pause
goto menu

:six
net stop spooler
pause
goto menu

:seven
net start spooler
pause
goto menu

:eight
whoami
pause
goto menu

:end
echo program will shut down
pause