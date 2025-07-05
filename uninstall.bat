@echo off
title ADB App Uninstaller
echo.
echo Connecting to device...
adb start-server >nul
adb devices
echo.

echo Starting uninstall process...
echo.

REM Facebook & related apps
adb shell pm uninstall -k --user 0 com.facebook.katana
adb shell pm uninstall -k --user 0 com.facebook.system
adb shell pm uninstall -k --user 0 com.facebook.appmanager
adb shell pm uninstall -k --user 0 com.instagram.android
adb shell pm uninstall -k --user 0 com.facebook.orca
adb shell pm uninstall -k --user 0 com.facebook.services

REM Asus
adb shell pm uninstall -k --user 0 com.asus.dm

REM Google apps
adb shell pm uninstall -k --user 0 com.google.android.music
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.apps.wellbeing
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall -k --user 0 com.google.android.calendar
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.apps.docs

echo.
set /p playstore_choice=Do you want to uninstall the Play Store? (y/n): 
if /i "%playstore_choice%"=="y" (
    adb shell pm uninstall -k --user 0 com.android.vending
)

echo.
set /p gms_choice=Do you want to uninstall Google Play Services (GMS)? (y/n): 
if /i "%gms_choice%"=="y" (
    adb shell pm uninstall -k --user 0 com.google.android.gms
)

echo.
echo Done. You can now close this window.
pause
