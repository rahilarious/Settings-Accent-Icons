#!/system/bin/sh
SKIPUNZIP=1

### mod specific variables ###
MOMINSDK=28
MOAPKNAME="SettingsAccentIcons.apk"
MOPRINT1=" Preparing to paint stuff... "
MOPRINT2=" Getting brushes palette... "
MOPRINT3=" Ooops forgot colors..brb xD "
MOPRINT4=" Aaaand painted... Done n dusted "

### actual script ###
MOOVERLAYPATH="`cmd overlay dump | grep -o '\/.*apk$' | head -n 1 | sed -n 's/overlay\/.*apk$/overlay\//gip'`"

if [ $API -ge $MOMINSDK ]; then
    if [ $MOOVERLAYPATH ]; then
          ui_print "- Extracting module files"
          unzip -o "$ZIPFILE" -x 'META-INF/*' -d $MODPATH >&2

          MOREALOVERLAYPATH=`readlink -f $MOOVERLAYPATH`
          MOTARGETPATH=$MODPATH$MOREALOVERLAYPATH
          ui_print " Placing apk into $MOREALOVERLAYPATH "
          [ -f $MODPATH/$MOAPKNAME ] && mkdir -p $MOTARGETPATH && mv $MODPATH/$MOAPKNAME $MOTARGETPATH/$MOAPKNAME

          # Default permissions
          set_perm_recursive $MODPATH 0 0 0755 0644
          ui_print "";sleep 2;ui_print "$MOPRINT1"; sleep 2;ui_print "$MOPRINT2"; sleep 2;ui_print "$MOPRINT3"; sleep 2;ui_print "$MOPRINT4";sleep 1;ui_print "";ui_print '<><><><><><><><><><><><><><><><><><><><><>';ui_print ' Module by plethorahil (t.me/plethorahil) ';ui_print '<><><><><><><><><><><><><><><><><><><><><>';ui_print "";sleep 3
      else
      ui_print " Couldn't find overlay path "
      ui_print " Are you sure your device supports overlays? "
      ui_print " Contact me t.me/plethorahil to figure out "
      fi
else
    ui_print "Sorry !!! Your device doesn't support this module"
fi
