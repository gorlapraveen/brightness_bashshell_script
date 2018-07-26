#!/bin/bash

# backlight brightness controls. use freely
# and adjust sysfs directory if not on intel
# $author  praveen reddy gorla
#setup.py install the backlight brightness packages in your file system so that they are globally available to the user.
sudo chmod +x backlight.sh
sudo cp backlight.sh /usr/local/bin/
sudo cp backlight.sh /usr/bin/backlight
sudo chmod +x /usr/bin/backlight

