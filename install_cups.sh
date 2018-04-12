#!/bin/bash

echo ----- install cups -----
echo
sudo apt-get -y install cups
sudo usermod -a -G lpadmin pi
sudo adduser pi lp

echo
echo ----- installation à la mode jo terminée ------
echo



