@echo off
title X-WIFIX-37
color 0A

:menu
cls
echo =======================================
echo            X-WIFIX-37
echo =======================================
echo [1] Show saved WiFi profiles
echo [2] View password of a saved network
echo [3] Scan for nearby networks (Info only)
echo [4] check router info 
ECHO [5] CHECK CONNECTED DEVICE CONFIGUARATION 
echo [6] Exit
set /p choice=Enter your choice: 

if %choice%==1 goto showprofiles
if %choice%==2 goto getpass
if %choice%==3 goto scanwifi
if %choice%==4 goto ROUTER INFO 
if %choice%==5 goto CONFIGUARATION
if %choice%==6 exit
goto menu

:showprofiles
cls
echo Saved WiFi Profiles:
netsh wlan show profiles
pause
goto menu

:getpass
cls
set /p ssid=Enter WiFi Name (SSID): 
netsh wlan show profile name="%ssid%" key=clear | findstr "SSID Key"
pause
goto menu

:scanwifi
cls
netsh wlan show networks
pause
goto menu

:ROUTER INFO 
CLS
netsh wlan show interfaces
PAUSE
GOTO MENU

:CONFIGUARATION
arp -a 
pause
goto menu




