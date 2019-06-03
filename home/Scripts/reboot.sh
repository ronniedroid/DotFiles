#!/bin/bash

MENU="dmenu -i -l 2 -p "-Reboot?""
C=$(echo -e "YES\nNO\n" | $MENU)

case "$C" in
  YES) systemctl reboot & ;;
  NO) exit 0;;
esac

