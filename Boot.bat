@echo off & title Aria2 ��������
echo 1.�� Aria2 ��Ϊ��������
echo 2.ȡ�� Aria2 ��������
set /p aria2= �������Ӧ����ţ�
IF %aria2% EQU 1 (REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Aria2  /t REG_SZ /d %cd%\Start.vbs /f)
IF %aria2% EQU 2 (REG DELETE HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Aria2 /f)
pause > nul