#! /bin/sh
##################################################################################################
# Displaylink / Nvidia workaround ~ By Katie M. Nelson January 30, 2022
#=================================================================================================
#
#*************************************************************************************************
# To use xorg.conf which offers settings such as "force composition pipeline"
#
# would have to create or copy xorg.conf to /etc/X11/xorg.conf
# ~ would require sudo privilages
# ~ would have to log out
#*************************************************************************************************
# To use displaylink for 7 inch sensor panel
#
# would have to delete xorg.conf ~ /etc/X11/xorg.conf
# ~ would require sudo privilages
# ~ would have to log out
#
##################################################################################################
# Uses mcopy ~ sudo apt install mtools
##################################################################################################
if [ -d "/etc/X11/Backup/" ] #check if backup directory exist
then
    FILE=/etc/X11/xorg.conf
        if [ -f "$FILE" ]; then #directory exist...check if file exist
            sudo mcopy /etc/X11/xorg.conf /etc/X11/Backup/xorg.conf # back up xorg.conf
            sudo rm -f /etc/X11/xorg.conf # remove xorg.conf
            echo "xorg.conf backed up to /etc/X11/Backup/xorg.conf" # Notify user!
            echo "xorg.conf removed from /etc/X11/" # Notify user!
            $SHELL
        else
            echo "$FILE does not exist." # action if xorg.conf doesn't exist
            $SHELL
        fi
else # if /etc/X11/Backup/ directory doesn't exsit
    sudo mkdir /etc/X11/Backup # action if directory doesn't exist
        FILE=/etc/X11/xorg.conf
        if [ -f "$FILE" ]; then
            sudo mcopy /etc/X11/xorg.conf /etc/X11/Backup/xorg.conf # back up xorg.conf
            sudo rm -f /etc/X11/xorg.conf # remove xorg.conf
            echo "xorg.conf backed up to /etc/X11/Backup/xorg.conf" # Notify user!
            echo "xorg.conf removed from /etc/X11/" # Notify user!
            $SHELL
        else
            echo "/etc/X11/Backup directory created."
            echo "There was no xorg.conf in /etc/X11/ to backup."
            $SHELL
        fi
fi
$SHELL
