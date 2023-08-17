#!/bin/bash
#By Katie M. Nelson 8/14/23
#a script to open an app menu from steam with no desktop panels
tmp=$(xdotool getactivewindow)
xdotool key --window [$tmp] Alt_L+Return
/bin/bash "/home/username/.conky/Steam-Conky-Panel/Steam-Conky-Panel.sh"
latte-dock
