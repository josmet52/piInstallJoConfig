#!/bin/bash

echo ----- installation de matplotlib -----
echo
sudo git clone https://github.com/matplotlib/matplotlib
cd matplotlib
sudo python3 setup.py build
sudo python3 setup.py install
cd ..
sudo rm -Rf matplotlib
echo
echo ----- installation à la mode jo terminée -----
echo



