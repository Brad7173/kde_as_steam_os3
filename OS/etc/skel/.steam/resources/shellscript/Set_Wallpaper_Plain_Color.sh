#!/bin/bash
#By Katie M. Nelson 8/17/23
#a script to change the desktop to a plain color
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
    var allDesktops = desktops();
    print (allDesktops);
    for (i=0;i<allDesktops.length;i++) {{
        d = allDesktops[i];
        d.wallpaperPlugin = "org.kde.color";
        d.currentConfigGroup = Array("Wallpaper",
                                     "org.kde.color",
                                     "General");
        d.writeConfig("Plain Color", "#000000")
    }}
'
