#!/bin/bash
#By Katie M. Nelson 8/17/23
#a script to change the wallpaper
#/etc/skel/wallpapers/valve_wallpaper1.jpg
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
    var allDesktops = desktops();
    print (allDesktops);
    for (i=0;i<allDesktops.length;i++) {{
        d = allDesktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                     "org.kde.image",
                                     "General");
        d.writeConfig("Image", "/etc/skel/wallpapers/valve_wallpaper1.jpg")
    }}
'
