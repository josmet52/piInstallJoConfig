#!/bin/bash

echo install cups printer queue
sudo apt-get -y install cups
sudo usermod -a -G lpadmin pi
sudo adduser pi lp
echo

echo dernières mises à jour
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
echo

echo installation à la mode jo terminée
echo pour installer l'imprimante lancer l'explorer avec l'adresse
echo 127.0.0.1:631 
echo


