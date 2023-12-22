@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION 

:startPoint
SET /p portNumber=Please Enter Port Number:

FOR /F "tokens=5 delims= " %%P IN ('netstat -a -n -o ^| findstr :!portNumber!') DO (
	TaskKill.exe /F /PID %%P
	@ECHO SUCCESS: The process with PID %%P has been terminated.
	ECHO:
)


SET /P userChoose=If you want to close another program, you should enter the "yes":
IF "%userChoose%" == "yes" ( 
   goto :startPoint 
)

EXIT