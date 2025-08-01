@echo off
title X-FLY-37
color 4
:menu
cls
echo ===================================
bash -c "figlet -f slant 'X  F L Y  3 7' | lolcat" 2>nul
echo ===================================
echo 1. NETWORK PING SCANNER
echo 2. NETWORK PASSWORD FINDER 
echo 3. WEBSITE SCANNER
echo 4. SYSTEM INFO 
echo 5. APP OPENER
echo 6. WEBSITE SCANNER 2.0
echo 7. HELP
ECHO 8. EXPLOITERS
echo 9. [PORT SCANNER]
echo 10. [WIFIX-37]
color 4

set /p choice=CHOOSE AN OPTION: 

if "%choice%"=="1" goto NETWORK_PING_SCANNER
if "%choice%"=="2" goto NETWORK_PASSWORD_FINDER
if "%choice%"=="3" goto WEBSITE_SCANNER
if "%choice%"=="4" goto SYSTEM_INFO
if "%choice%"=="5" goto APP_OPENER
if "%choice%"=="6" WEBSITE_SCANNER 2.0
if "%choice%"=="7" goto HELP 
if "%choice%"=="8" goto EXPLOITERS
if "%choice%"=="9" goto PORT_SCANNER
if "%choice%"=="10" goto WIFIX-37
goto menu

:NETWORK_PING_SCANNER
COLOR A
cls
set /p ip=Enter IP to scan: 
ping -n 4 %ip%
pause
goto menu

:NETWORK_PASSWORD_FINDER
COLOR 1
cls
netsh wlan show profiles
set /p name=Enter WiFi name: 
netsh wlan show profile name="%name%" key=clear
pause
goto menu

:WEBSITE_SCANNER
COLOR 4
cls
set /p website=Enter website to scan: 
ping %website%
pause
goto menu

:SYSTEM_INFO
COLOR
cls
systeminfo
pause
goto menu

:APP_OPENER
cls
start notepad
pause
goto menu

:EXPLOITERS
COLOR 4
cls
ECHO 1. ZPHISHER EXPLOITER
ECHO 2. RED HAWK EXPLOITER 
echo 3. SHERLOCK EXPLOITER 
SET /P choice=CHOOSE EXPLOITER TO RUN: 

if "%choice%"=="1" goto zphisher
if "%choice%"=="2" goto RED_HAWK
if "%choice%"=="3" goto SHERLOCK
goto menu

:zphisher
cls
COLOR 4
echo ACTIVATING EXPLOITER.....
setlocal enabledelayedexpansion
for /l %%a in (1,1,100) do (
    set /a "dots=%%a %% 4"
    set "bar=ACTIVATING EXPLOITER"
    for /l %%b in (1,1,!dots!) do set "bar=!bar!."
    cls
    echo !bar! %%a%%
    ping -n 1 127.0.0.1 >nul
)
echo ACTIVATION Completed!
echo L A U N C H I N G-E X P L O I T E R..........
wsl bash -c "cd /mnt/c/Users/pc/Desktop/zphisher && bash zphisher.sh" 2>nul
pause
goto menu

:RED_HAWK
cls
COLOR 4
setlocal enabledelayedexpansion
for /l %%a in (1,1,100) do (
    set /a "dots=%%a %% 4"
    set "bar=ACTIVATING EXPLOITER"
    for /l %%b in (1,1,!dots!) do set "bar=!bar!."
    cls
    echo !bar! %%a%%
    ping -n 1 127.0.0.1 >nul
)
echo L A U N C H I N G-E X P L O I T E R..........
echo LAUNCHING RED HAWK...
wsl bash -c "cd /mnt/c/Users/pc/Desktop/RED_HAWK && php rhawk.php" 2>nul
pause
goto menu

:SHERLOCK 
CLS
COLOR 4
setlocal enabledelayedexpansion
for /l %%a in (1,1,100) do (
    set /a "dots=%%a %% 4"
    set "bar=ACTIVATING EXPLOITER"
    for /l %%b in (1,1,!dots!) do set "bar=!bar!."
    cls
    echo !bar! %%a%%
    ping -n 1 127.0.0.1 >nul
)
echo L A U N C H I N G-E X P L O I T E R..........
ECHO S-H-E-R-L-O-C-K 
echo SHERLOCK ACTIVATED!
katkit.bat
pause 
goto menu


:WEBSITE_SCANNER_2.0
cls
set /p website=Enter website to scan: 
nslookup %website%
pause
goto menu

:HELP
cls
echo X-FLY-37 TOOL - HELP
echo.
echo 1. NETWORK PING SCANNER - Pings a given IP.
echo 2. NETWORK PASSWORD FINDER - Shows saved WiFi passwords.
echo 3. WEBSITE SCANNER - Scans a website via ping/nslookup.
echo 4. SYSTEM INFO - Shows basic system details.
echo 5. APP OPENER - Opens basic Windows apps.
echo 6. HACK APP - PHISHER TOOL BRUTE LOGIN.
echo 7. WEBSITE SCANNER 2.0- SCAN A WEB THROUGH NSLOOK.
echo 9. CHECK USERNAME ON WEB- EXPOSE ALL VICTIMS/YOUR USERNAME ON ALL WEBSITE WHERE YOU/VICTIM LOGIN.
echo 10. [port scanner]- SCAN FOR PORTS WHICH AARE AVAILABLE.
echo 11. [WEB INFO GATHER]- LAUNCH A EXPLOITER TO COLLECT DEEP INFO OF ANY WEB.
pause
goto menu

:CHECK USERNAME ON WEB 
:RUN_SHERLOCK
cls
katkit.bat
pause
goto menu

:PORT_SCANNER
cls
echo ===============================
echo        PORT SCANNER TOOL      
echo ===============================
set /p target=Enter target IP: 
echo Scanning ports 20 to 25 on %target%...
echo.

for /l %%p in (20,1,25) do (
    powershell -Command "try { (New-Object Net.Sockets.TcpClient).Connect('%target%', %%p); Write-Output 'Port %%p is OPEN' } catch {}"
)

echo.
pause
goto menu

:WIFIX-37
cls
X-WIFIX-37.bat
pause
goto menu





