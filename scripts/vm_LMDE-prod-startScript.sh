#!/bin/sh

echo "Mount shared folder"
sudo mount -t cifs -o user=afg,iocharset=utf8,noperm //debian.local/partage-LMDE-prod/ ~/data

echo "Resize resolution 2560x1440"
xrandr --newmode "2560x1440_60.00" 311.83 2560 2744 3024 3488 1440 1441 1444 1490 -HSync +Vsync
xrandr --addmode Virtual-1 "2560x1440_60.00"
xrandr --output Virtual-1 --mode "2560x1440_60.00"

echo "change to bepo-afg keyboard layout"
setxkbmap fr bepo-afg

echo "Reload i3 config"
#i3-msg reload
# charge fond ecran
#feh --bg-scale ~/Téléchargements/livia-sAVFADKItCo-unsplash.jpg 
