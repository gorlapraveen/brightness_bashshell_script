#!/bin/bash
#this script is used for deleting the previous installed scripts by this package(s), from the system. i.e installation of backlight.sh globally is deleted and further more its commnds cannot be used for brightness adjustment via terminal

sudo rm /usr/local/bin/backlight.sh
sudo rm /usr/bin/backlight 
echo "backlight.sh : brightness package via command line is removed"
