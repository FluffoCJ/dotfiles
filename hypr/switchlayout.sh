#!/bin/bash

LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

case $LAYOUT in
"master")
	hyprctl keyword general:layout dwindle

  notify-send "Dwindle Layout"
	;;
"dwindle")
	hyprctl keyword general:layout master

  notify-send "Master Layout"
	;;
*) ;;

esac
