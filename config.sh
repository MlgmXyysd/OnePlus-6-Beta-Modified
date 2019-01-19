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
