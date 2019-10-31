#!/bin/bash

MENU="rofi -dmenu -i -location 3 -width 15 -lines 2 -xoffset -10 -yoffset 35 -eh 1 -p "-Reboot?""
C=$(echo -e "YES\nNO\n" | $MENU)

case "$C" in
  YES) systemctl reboot & ;;
  NO) exit 0;;
esac

