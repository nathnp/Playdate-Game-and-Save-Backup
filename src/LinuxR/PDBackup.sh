#!/bin/bash

folder="/run/media/$USER/PLAYDATE" # <- Put path to Playdate's root here

if [ ! -d "$folder" ]; then
	echo "Please connect your Playdate in data disk mode"
	echo "You can do this by going to Settings -> System -> Reboot to Data Disk -> OK on the Playdate"
	exit 1
fi

printf "Would you like to back up Games, Saves, or Both [g,s,b] "
read choice

printf "Enter date, no spaces please "
read tdate

mkdir -p Playdate

if [ $choice == "g" ]; then

	printf "Copying games, this WILL take a while\n"
	cd Playdate
	cp -r $folder/Games .
	cd ..
fi

if [ $choice == "s" ]; then

	printf "Copying saves, this may take a moment\n"
	cd Playdate
	cp -r $folder/Data .
	cd ..
	
fi

if [ $choice == "b" ]; then

	printf "Copying saves, this may take a moment\n"
	cd Playdate
	cp -r $folder/Data .
	cd ..
	
	printf "Copying games, this WILL take a while\n"
	cd Playdate
	cp -r $folder/Games .
	cd ..
	
fi

printf "Tarballing Saves and Games\n"
tar cf PDBackup$tdate.tar Playdate/

printf "Gziping tarball\n"
gzip PDBackup$tdate.tar

rm -rf Playdate

printf "Done\n"