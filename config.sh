AUTOMOUNT=true
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=false
print_modname() {
  ui_print "*************************************"
  ui_print "*      OnePlus Modified Module      *"
  ui_print "* For OnePlus 6/6T Pie Based Device *"
  ui_print "*           By MlgmXyysd.           *"
  ui_print "*      QQ Chat Group 855219808      *"
  ui_print "*************************************"
}
REPLACE="
/system/xbin/antradio_app
/system/xbin/box
/system/xbin/dtest.sh
/system/xbin/gamemode_networkboost_disable.sh
/system/xbin/gamemode_networkboost_enable.sh
/system/xbin/gamemode_networkboost_init.sh
/system/xbin/nfc_trasmit_start.sh
/system/xbin/nfc_trasmit_stop.sh
/system/xbin/pnx
/system/xbin/QMESA_64
/system/xbin/tcpdump
/system/app/OPIpTime/oat/arm64/OPIpTime.odex
/system/app/OPIpTime/oat/arm64/OPIpTime.vdex
/system/app/OPIpTime/OPIpTime.apk
/system/app/OPMmsLocationFramework/OPMmsLocationFramework.apk
/system/app/OPPush/OPPush.apk
/system/app/OPSesAuthentication/OPSesAuthentication.apk
/system/app/OPSesAuthentication/oat/arm64/OPSesAuthentication.odex
/system/app/OPSesAuthentication/oat/arm64/OPSesAuthentication.vdex
/system/app/OPWallpaperResources/OPWallpaperResources.apk
/system/app/OPWidget/OPWidget.apk
/system/etc/permissions/privapp-permissions-wellbeing.xml
/system/etc/sysconfig/wellbeing-hiddenapi-package-whitelist.xml
/system/fonts/Clock2016.ttf
/system/fonts/Clock2017L.ttf
/system/fonts/Clock2017R.ttf
/system/media/audio/notifications/cust_mms_notification.ogg
/system/media/audio/notifications/cust_notification_sound.ogg
/system/media/audio/ringtones/cust_ringtone.ogg
/system/priv-app/MinitBatterySettings/MinitBatterySettings.apk
/system/priv-app/AudioFX/AudioFX.apk
/system/priv-app/ModSettings/ModSettings.apk
/system/priv-app/MinitBatteryResources/MinitBatteryResources.apk
/system/priv-app/OPSystemUI/OPSystemUI.apk
/system/priv-app/Settings/Settings.apk
/system/priv-app/Wellbeing/Wellbeing.apk
"
set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
check_system() {
  SYSTEM_VERSION=`grep_prop ro.build.version.sdk /system/build.prop`
  if [[ "$SYSTEM_VERSION" != "28" ]]; then
    ui_print "- Only support Pie based rom, current is $SYSTEM_VERSION ."
    ui_print "- Aborting."
    exit 1
  else
    ui_print "- Device Android Version: $SYSTEM_VERSION ."
  fi
}