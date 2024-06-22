@echo off
setlocal enabledelayedexpansion
 
set /p "folderPath=Enter folder path: "
set /p "fileExtension=Enter file extension to delete (e.g., txt): "
 
for /f "delims=" %%i in ('dir /b "%folderPath%\*.%fileExtension%" 2^>nul') do (
    set "filePath=%folderPath%\%%i"
    echo Deleting: !filePath!
    del /q "!filePath!"
)

echo Operation completed.
pause