
@echo off
title Motorola Google Debloater
color 0A

echo ==========================================
echo       MOTOROLA GOOGLE DEBLOATER
echo ==========================================
echo.
echo KEEPING:
echo - Google Play Store
echo - Google Play Services
echo - Google Services Framework
echo - Phone and SMS
echo - Contacts
echo - Google Maps
echo - Google Drive
echo - Google Pay India
echo - NFC Services
echo.
echo Make sure USB debugging is enabled.
echo.
pause

echo.
echo Removing unwanted Google apps...
echo.

adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall -k --user 0 com.google.android.keep
adb shell pm uninstall -k --user 0 com.google.android.calendar
adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
adb shell pm uninstall -k --user 0 com.google.android.play.games
adb shell pm uninstall -k --user 0 com.google.android.videos
adb shell pm uninstall -k --user 0 com.google.android.apps.books
adb shell pm uninstall -k --user 0 com.google.android.apps.magazines
adb shell pm uninstall -k --user 0 com.google.android.apps.translate
adb shell pm uninstall -k --user 0 com.google.android.apps.chromecast.app
adb shell pm uninstall -k --user 0 com.google.android.apps.googleassistant
adb shell pm uninstall -k --user 0 com.google.android.apps.turbo
adb shell pm uninstall -k --user 0 com.google.android.apps.subscriptions.red
adb shell pm uninstall -k --user 0 com.google.android.apps.restore

echo.
echo ==========================================
echo       DEBLOAT COMPLETED
echo ==========================================
echo.
pause
