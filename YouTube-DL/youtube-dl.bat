@echo off
if not defined %option% exit
title ^|YouTube DL :  %option%^|  ^|%choice%^|
mode con lines=30 cols=106
call "batool.exe" h 1
echo [40;90m
echo        ##############################################
if "%language%"=="FR" echo        #      [40;91m[40;90m   [40;36mBievenue dans YouTube DL   [40;91m[40;90m      #
if "%language%"=="EN" echo        #       [40;91m[40;90m   [40;36mWelcome in YouTube DL   [40;91m[40;90m        #
echo        ##############################################
echo:
if "%language%"=="FR" echo         [40;36mChoix : %option%[40;90m
if "%language%"=="EN" echo         [40;36mChoice : %option%[40;90m
if "%language%"=="FR" echo         [40;36mVeuillez patienter pendant le t�l�chargement . . .[40;90m
if "%language%"=="EN" echo         [40;36mPlease wait while the downloading . . .[40;90m
echo:
echo ==========================================================================================================
echo [40;31m
call "Portable_Apps\YouTube-DL\youtube-dl.exe" --config-location "Portable_Apps\YouTube-DL" --ffmpeg-location "Portable_Apps\YouTube-DL" --add-metadata %argument0%%argument1%%argument2%%argument3%%argument4% "%choice%"
echo [40;90m
echo ==========================================================================================================
echo [40;36m
if "%language%"=="FR" echo         T�l�chargement terminer.
if "%language%"=="EN" echo         Download finished.
if "%language%"=="FR" echo         Appuyez sur une touche pour ouvrir l'emplacement de t�l�chargement.
if "%language%"=="EN" echo         Press any key to open download location.
pause >nul 2>&1
if defined output if exist %output% start "" "explorer.exe" "%output%"
exit