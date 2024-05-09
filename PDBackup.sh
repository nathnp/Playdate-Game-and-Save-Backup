#!/bin/bash

printf "Enter date, no spaces please"
read tdate

printf "Copying saves, this may take a moment"
cp -r /Volumes/PLAYDATE/Data .

printf "Copying games, this WILL take a while"
cp -r /Volumes/PLAYDATE/Games .

printf "Tarballing Saves and Games"
tar cf PDSavesNGames$tdate.tar Data/ Games/

printf "Gziping tarball"
gzip PDSavesNGames$tdate.tar

rm -rf Data
rm -rf Games

print "Done"