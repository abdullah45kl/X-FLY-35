@echo off
color c
echo  -------------
echo  SHERLOCK
ECHO  -------------
echo Type your username:
set /p username=
cd sherlock
cd sherlock_project
python sherlock.py %username%
pause

