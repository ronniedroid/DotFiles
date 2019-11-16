#!/bin/bash

MENU="rofi -dmenu -i -location 3 -width 15 -lines 2 -xoffset -10 -yoffset 35 -eh 1 -p "-Exit?""
c=$(echo -e "YES\nNO\n" | $MENU)

if [ ${c} == YES ] 
then
	  i3-msg exit

elif [ ${c} == NO ]
then
	exit 0
fi
