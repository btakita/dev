#!/bin/sh
xinput --list | grep 'HTX USB HID Device HTX HID Device Touchpad' | awk '{for(i=1;i<=NF;i++){ if($i ~ /id=/){gsub("id=", "", $i); print $i}}}' | awk '{print "xinput disable"$1"; xinput enable "$1}'
