#!/bin/bash
#By Katie M. Nelson 8/14/23
#a script to open an app menu from steam with no desktop panels and launch a conky
tmp=$(xdotool getactivewindow)
xdotool key --window [$tmp] Alt_L+Return
/bin/bash "/home/yourusername/.conky/Steam-Conky-Panel/Steam-Conky-Panel.sh"
latte-dock
