#!/bin/bash

entries="Logout\nReboot\nShutdown"

selected=$(echo -e $entries|wofi --width 500 --height 300 --dmenu --cache-file /dev/null | awk '{print tolower($0)}')


case $selected in
  logout)
    exec killall -9 Hyprland;;
  reboot)
    exec systemctl reboot;;
  shutdown)
    exec systemctl poweroff -i;;
esac
