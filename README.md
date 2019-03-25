# PC AutoBackup for Linux and OS X for Samsung digital cameras #

This project is in active development and is currently a work-in-progress.


# Docker #
## Building ##
docker build -t autobackup .

## Running ##
docker run --name autobackup --network host -v /PATH_FOR_PHOTOS_ON_HOST:/root autobackup

## Configure Server ##
Open .pc_autobackup.cfg in mounted docker volume and change "127.0.0.1" to your server's IP address. Restart the docker container. (docker stop autobackup && docker start autobackup)

## Manually Configure Camera ##
Mount SD card and copy the folder "dlna_web_root" into root. Open .pc_autobackup.cfg in mounted docker volume and copy both server_name and uuid into the file "SAMSUNGAutoBackupDESC.ini" in "dlna_web_root" on the SD card. No need to change the MAC address setting in "SAMSUNGAutoBackupDESC.ini".

Insert the SD card into the camera and you can now run Auto Backup.

# Getting Started #

## Requirements ##
  * [Python 2.5+](http://python.org/download/releases/2.7.3/) _Python 3.x not yet tested_
  * [Twisted](http://twistedmatrix.com/trac/wiki/Downloads)

## Configuring your camera ##
> ### If your camera has already been setup with PC AutoBackup for Windows ###
    * Mount your camera's SD card
    * pc_autobackup.py --import_camera_config=/path/to/camera
    * Uninstall PC AutoBackup on Windows **_(failure to do so will prevent this server from working)_**
> ### If you have never setup PC AutoBackup before ###
    * Mount your camera's SD card
    * pc_autobackup.py --create_camera_config=/path/to/camera

## Starting the server ##
  * pc_autobackup.py

> See _pc_autobackup.py --help_ for more options

## **Tested with the following cameras:** ##

  * DV300F
  * NX1000
  * WB150F
  * WB350F
  * ST200F
  * Does it work with your camera? Send me a pull request editing this README.

## **Tested on the following OS:** ##

  * Arch 64-bit
  * Ubuntu 12.04 (precise) 32/64-bit
  * Mac OS X 10.8.2 (Mountain Lion)

## **Tested on the following Python versions:** ##

  * Python 2.7.2
  * Python 2.7.3
  * Python 2.7.11

---

**_This software is NOT created or supported by Samsung_**

**_Samsung is a registered trademark of Samsung Electronics Co., Ltd._**
