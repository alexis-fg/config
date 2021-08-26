#!/bin/sh

# get original parent dir of the script. useful if symlink
scriptsDir="$(dirname "$(realpath "$0")")"
echo "scripts folder : " $scriptsDir

# go to this location
cd $scriptsDir


# exec scripts
echo "Resize résolution 2560x1440"
sh ./resizeResoToWqhd.sh

echo "Passage layout bepo/afg"
sh ./setBepoAfgLayout.sh
