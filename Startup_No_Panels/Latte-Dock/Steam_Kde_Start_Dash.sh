#!/bin/bash
#By Katie M. Nelson 8/15/23
#a script to open an app menu from steam with no desktop panels
#alt + enter will close big picture to normal mode
tmp=$(xdotool getactivewindow)
xdotool key --window [$tmp] Alt_L+Return
#sleep 3
latte-dock
exit
