@echo off
title YP_Installer
echo [33mIF YOU DID RENAME SOMETHING THEN YOU WON'T BE ABLE TO UNINSTALL U WILL NEED TO UNINSTALL MANUALLY[0m
echo [31m[1] Install [2] Uninstall[0m
echo [32m[0] Exit[0m
set /P yp=[31mC[0m[32mo[0mm[33mm[0m[34ma[0m[35mn[0m[36md[0m; 
if "%yp%"=="1" goto :1
if "%yp%"=="2" goto :2
if "%yp%"=="0" goto :end
exit
:2
echo TO UNINSTALL YP PUT "yp_starter.exe" IN THE SAME FOLDER AS "yp_installer.bat"
echo THEN RUN yp_Installer.bat
echo CLICK ANY KEY ANYWHERE TO UNINSTALL
pause
ren yp_starter.exe lib.yp_Installer
timeout /t 1 /NOBREAK
del lib.yp_Installer
CLS
echo SUCCES!
pause
exit
:1
echo TO INSTALL YP PUT "lib.yp_Installer" IN THE SAME FOLDER AS yp_installer.bat
echo THEN RUN yp_Installer.bat
echo CLICK ANY KEY ANYWHERE TO INSTALL
pause
ren lib.yp_Installer yp_starter.exe
CLS
echo SUCCES!
echo YOU CAN NOW RUN yp_starter.exe
pause
exit
:end
exit
exit
