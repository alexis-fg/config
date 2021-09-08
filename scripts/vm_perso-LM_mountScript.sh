#!/bin/sh

echo "change to bepo keyboard layout"
setxkbmap fr bepo

echo "Mount shared folder"
sudo mount -t cifs -o user=afg,iocharset=utf8,noperm //debian.local/partage-LM-perso/ ~/data

echo "Call startScript"
cd ~/data/config/scripts
sh ./vm_startScript.sh
