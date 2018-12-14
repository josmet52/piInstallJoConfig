#!/bin/bash

echo ----- import jo projects from github -----
echo

cd /home/pi/Documents
mkdir projets_jo
cd projets_jo

echo ----- import tempLogger -----
echo
git clone https://github.com/josmet52/tempLogger

echo
echo ----- import inconfortMeter -----
echo
git clone https://github.com/josmet52/inconfortMetre

echo
echo ----- import shakeMesure -----
echo
git clone https://github.com/josmet52/shakeMesure

echo
echo ----- import gphoto2-----
echo
git clone https://github.com/josmet52/gphoto2
cd /
echo

echo
echo ----- installation à la mode jo terminée -----
echo



