@echo off 
setlocal enabledelayedexpansion

set /p file_name="Enter the output file name:"

set /p num_apps="How many application paths will you enter?: "
 
for /l %%i in (1, 1, %num_apps%) do ( 
    set /p app_path=Uygulama yolunu girin:   
    echo  start "" "!app_path!"  >> !file_name!.bat
)
    
