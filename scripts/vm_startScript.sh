#!/bin/sh

# vm hostnames
lmperso="lm-perso"
ubuntudev="afg-Standard-PC-i440FX-PIIX-1996"


# current hostname
curname=`hostname`


# create symlinks
# TODO



# commands
echo "Resize resolution 2560x1440"
xrandr --newmode "2560x1440_60.00" 311.83 2560 2744 3024 3488 1440 1441 1444 1490 -HSync +Vsync
xrandr --addmode Virtual-1 "2560x1440_60.00"
xrandr --output Virtual-1 --mode "2560x1440_60.00"


echo "change to bepo-afg keyboard layout"
setxkbmap fr-afg bepo-afg

echo "Reload i3 config"
i3-msg reload

echo "Reload Xresources"
xrdb ~/.Xresources

if [ $curname = $lmperso ]
    then
        echo "Change background"
        feh --bg-scale ~/data/images/wallpapers/livia-sAVFADKItCo-unsplash.jpg 
fi


