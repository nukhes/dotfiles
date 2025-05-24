#!/bin/bash

chosen=$(echo -e "Shutdown\nReboot\nSuspend\nLock\nCancel" | rofi -dmenu -i -p "Power State")

case "$chosen" in
  *Shutdown) systemctl poweroff ;;
  *Reboot) systemctl reboot ;;
  *Suspend) systemctl suspend ;;
  *Lock) i3lock ;;
  *Cancel) exit 0 ;;
esac
z