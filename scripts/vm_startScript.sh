#!/bin/sh

# vm hostnames
lmperso="lm-perso"
ubuntudev="afg-Standard-PC-i440FX-PIIX-1996"
lmprod="lm-prod"


# current hostname
curname=`hostname`


# create symlinks
# TODO


# commands
echo "Resize resolution 2560x1440"
xrandr --newmode "2560x1440_60.00" 311.83 2560 2744 3024 3488 1440 1441 1444 1490 -HSync +Vsync
xrandr --addmode Virtual-1 "2560x1440_60.00"
xrandr --output Virtual-1 --mode "2560x1440_60.00"

if [ $curname = $lmperso ]
    then
        echo "Change background"
        feh --bg-scale ~/data/images/wallpapers/livia-sAVFADKItCo-unsplash.jpg 

        # vpn
        #echo "Connect vpn"
        sudo nordvpn c fr

        # client dropbox
        #echo "Start maestral"
fi

if [ $curname = $lmprod ]
    then
        echo "Change background"
        feh --bg-scale ~/data/images/wallpapers/artiom-vallat-rFxk_Ea9PME-unsplash.jpg
        #flatpak run com.dropbox.Client
        #flatpak run com.nextcloud.desktopclient.nextcloud
fi

echo "change to bepo-afg keyboard layout"
setxkbmap fr-afg bepo-afg

echo "Reload i3 config"
i3-msg reload

echo "Reload Xresources"
xrdb ~/.Xresources

