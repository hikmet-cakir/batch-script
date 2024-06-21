@ECHO OFF
SETLOCAL

SET /P "source_dir=Source directory path: "
SET /P "target_dir=Target directory path: "
 
IF "%source_dir%"=="" (
    ECHO  Source directory is not specified. Exiting the script.
    PAUSE
    EXIT /B 1
)
IF "%target_dir%"=="" (
    ECHO  Target directory is not specified. Exiting the script.
    PAUSE
    EXIT /B 1
)
 
SET /P "file_extension=File extension of files to move (e.g. .txt): "
 
IF "%file_extension%"=="" set "file_extension=.txt"

ECHO Moving files...
 
FOR %%i IN ("%source_dir%\*%file_extension%") DO (
    MOVE "%%i" "%target_dir%"
    ECHO Moved file: %%~nxi
)

ECHO Operation completed.
PAUSE