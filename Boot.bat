@echo off & title Aria2 开机启动
echo 1.将 Aria2 设为开机启动
echo 2.取消 Aria2 开机启动
set /p aria2= 请输入对应的序号：
IF %aria2% EQU 1 (REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Aria2  /t REG_SZ /d %cd%\Start.vbs /f)
IF %aria2% EQU 2 (REG DELETE HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Aria2 /f)
pause > nul