@echo off & title Aria2 startup
echo 1.add Aria2 to startup
echo 2.remove Aria2 from startup
set /p aria2= input your choice£º
IF %aria2% EQU 1 (REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Aria2  /t REG_SZ /d %cd%\Start.vbs /f)
IF %aria2% EQU 2 (REG DELETE HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Aria2 /f)
pause > nul