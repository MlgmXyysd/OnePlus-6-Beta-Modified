AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false
print_modname() {
  ui_print "***************************************"
  ui_print "*       OnePlus Modified Module       *"
  ui_print "* For OnePlus 6 Pie Beta Based Device *"
  ui_print "*            By MlgmXyysd.            *"
  ui_print "*       QQ Chat Group 855219808       *"
  ui_print "***************************************"
}
REPLACE="
  /system/priv-app/ModSettings
  /system/priv-app/OPModifiedSettings-6
"
set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
modified() {
  . $MODPATH/system/xbin/aml.sh
}