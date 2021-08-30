#!/bin/sh

echo "Mount shared folder"
sudo mount -t cifs -o user=afg,iocharset=utf8,noperm //debian.local/partage-LM-perso/ ~/data

# get original parent dir of the script. useful if symlink
scriptsDir="$(dirname "$(realpath "$0")")"
echo "scripts folder : " $scriptsDir

# go to this location
cd $scriptsDir

# exec scripts
echo "Resize resolution 2560x1440"
sh ./resizeResoToWqhd.sh

echo "change to bepo-afg keyboard layout"
sh ./setBepoAfgLayout.sh

