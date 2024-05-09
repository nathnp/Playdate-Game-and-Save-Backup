# Playdate Game and Save Backup

This tool will back up your games, and save files from your playdate to your computer, and tar them up.

## How to Use

1. Download the right script for your system.

	- Mac users, download the mac.zip file.
	
	- Linux users who's disks mount at `/run/media/$USER/`, download the LinuxR.zip file.
	
	- Linux users who's disks mount at `/media/$USER/`, download the LinuxM.zip file.

2. Connect your Playdate in Data Disk Mode to your computer.

	- You can do this by going to Settings -> System -> Reboot to Data Disk -> OK on your Playdate
	
3. Run the script `./PDBackup.sh`

## Scrip is Throwing Error

1. Make sure your Playdate is in Data Disk Mode

	- You can do this by going to Settings -> System -> Reboot to Data Disk -> OK on your Playdate
	
2. If your Playdate is mounted to your computer, and you are getting "Please connect your Playdate in data disk mode", edit the folder variable in the script, to be the root of your Playdate.