@echo off 
setlocal enabledelayedexpansion

set /p file_name="Uygulama Cikti Dosyasinin Ismini Belirtiniz:"

set /p num_apps="Kac adet uygulama yolunu gireceksiniz? "
 
for /l %%i in (1, 1, %num_apps%) do ( 
    set /p app_path=Uygulama yolunu girin:   
    echo  start "" "!app_path!"  >> !file_name!.bat
)
    