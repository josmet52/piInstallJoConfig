#!/bin/bash

echo ----- install gphoto2 -----
echo
sudo apt-get -y install gphoto2
sudo chmod -x /usr/lib/gvfs/gvfs-gphoto2-volume-monitor
sudo pip install sh

echo ----- install mencoder -----
echo
sudo apt-get -y install mencoder

echo
echo ----- installation à la mode jo terminée ------
echo



