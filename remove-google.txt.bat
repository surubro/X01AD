@echo off
title Motorola - Google Debloater
color 0A

echo ==========================================
echo       GOOGLE APP DEBLOATER
echo ==========================================
echo.
echo PRESERVED:
echo - Google Play Store
echo - Google Play Services
echo - Google Services Framework
echo - Phone and SMS
echo - Contacts
echo - Google Maps
echo - Google Drive
echo - Google Pay India
echo - Android NFC and payment services
echo.
echo Removing optional Google applications...
echo.
pause

:: GOOGLE SEARCH AND ASSISTANT
adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall -k --user 0 com.google.android.apps.googleassistant

:: GOOGLE MEDIA
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.apps.books
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines

:: GOOGLE PRODUCTIVITY
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.keep
adb shell pm uninstall -k --user 0 com.google.android.calendar
adb shell pm uninstall -k --user 0 com.google.android.apps.tasks
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.docs
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.sheets
adb shell pm uninstall -k --user 0 com.google.android.apps.docs.editors.slides

:: GOOGLE FITNESS AND HEALTH
adb shell pm uninstall -k --user 0 com.google.android.apps.fitness

:: GOOGLE FIND HUB / FIND MY DEVICE
adb shell pm uninstall -k --user 0 com.google.android.apps.adm

:: GOOGLE HOME AND SMART DEVICES
adb shell pm uninstall -k --user 0 com.google.android.apps.chromecast.app
adb shell pm uninstall -k --user 0 com.google.android.apps.chromecast.home

:: GOOGLE COMMUNICATION
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.apps.meetings

:: GOOGLE ENTERTAINMENT AND GAMING
adb shell pm uninstall -k --user 0 com.google.android.play.games

:: GOOGLE TRANSLATION
adb shell pm uninstall -k --user 0 com.google.android.apps.translate

:: GOOGLE SUBSCRIPTIONS AND BACKUP
adb shell pm uninstall -k --user 0 com.google.android.apps.subscriptions.red
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

:: OTHER OPTIONAL GOOGLE APPS
adb shell pm uninstall -k --user 0 com.google.android.apps.turbo

echo.
echo ==========================================
echo       DEBLOAT COMPLETED
echo ==========================================
echo.
pause
