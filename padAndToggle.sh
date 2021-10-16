#!/usr/bin/bash
threshold=0
if [ $# -gt $threshold ]; then
  echo "setting panAndToggle configuration on the wacom Stylus with device number
  $1"
  xsetwacom set $1 Button 2 "pan"
  xsetwacom set $1 Button 3 "modetoggle"
  xsetwacom set $1 PanScrollThreshold 50
  xsetwacom set $1 MapToOutput eDP-1
  xsetwacom set $1 Rotate none
else
  echo "please specify the device number of the stylus as a parameter"
  echo "example: ./padAndToggle.sh 9" 
  echo "for device number 9"
fi
# "xrandr --query" for listing available displays
