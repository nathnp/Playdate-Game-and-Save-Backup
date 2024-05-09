#!/bin/bash

folder="/run/media/$USER/PLAYDATE" # <- Put path to Playdate's root here

if [ ! -d "$folder" ]; then
	echo "Please connect your Playdate in data disk mode"
	echo "You can do this by going to Settings -> System -> Reboot to Data Disk -> OK on the Playdate"
	exit 1
fi

printf "Enter date, no spaces please "
read tdate

printf "Copying saves, this may take a moment\n"
cp -r $folder/Data .

printf "Copying games, this WILL take a while\n"
cp -r $folder/Games .

printf "Tarballing Saves and Games\n"
tar cf PDSavesNGames$tdate.tar Data/ Games/

printf "Gziping tarball\n"
gzip PDSavesNGames$tdate.tar

rm -rf Data
rm -rf Games

printf "Done\n"