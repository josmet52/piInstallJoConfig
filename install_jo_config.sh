#!/bin/bash

echo install mysql
sudo apt-get -y install mysql-server
sudo apt-get -y install mysql-client
sudo apt-get -y install python-mysqldb
echo

#sudo apt-get install screen

echo install python-wxgtk2.8
sudo apt-get -y install python-wxgtk2.8
echo

echo install python-opencv
sudo apt-get -y install python-opencv
echo

echo install python-libxml2-dev
sudo apt-get -y install libxml2-dev
echo

echo install python-libxlst1-dev
sudo apt-get -y install libxslt1-dev
echo

echo install python-pandas
sudo apt-get -y install python-pandas
echo

echo install python-pymysql
sudo apt-get -y install python3-pymysql
echo

echo install python3-mysqlclient
sudo pip3 install mysqlclient
echo

echo install scikit-learn
sudo pip3 install scikit-learn
echo

echo install dropbox
sudo pip3 install dropbox
echo

echo install matplotlib
git clone https://github.com/matplotlib/matplotlib
cd matplotlib
python3 setup.py build
sudo python3 setup.py install
cd ..
rm /Rf matplotlib
echo

echo import jo projects from github
cd /home/pi/Documents
mkdir projets_jo
cd projets_jo
git clone https://github.com/josmet52/tempLogger
git clone https://github.com/josmet52/inconfortMetre
cd /
echo

echo configure mysql
#sh /home/pi/Documents/projets_jo/piInstallJoConfig/configure_mysql.sh

sudo mysql -u root -e "SET PASSWORD FOR root@localhost = PASSWORD('mablonde');"
sudo mysql -u root -pmablonde -e "DROP USER IF EXISTS pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE USER pi@localhost IDENTIFIED BY 'mablonde';"
sudo mysql -u root -pmablonde -e "GRANT ALL PRIVILEGES ON *.* TO pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE DATABASE tlogger;"
sudo mysql -u root -pmablonde < /home/pi/Documents/projets_jo/tempLogger/mysql/create_users_db_and_tables.sql
echo

echo install gnome-schedule
sudo apt-get -y install gnome-schedule
echo

echo install cups printer queue
sudo apt-get -y install cups
sudo usermod -a -G lpadmin pi
sudo adduser pi lp
echo

echo dernières mises à jour
sudo apt-get update
echo

sudo apt-get -y upgrade
echo

sudo apt-get -y dist-upgrade
echo

sudo apt-get -y autoremove
echo

echo installation à la mode jo terminée
echo pour installer l imprimante lancer l explorer avec l adresse
echo 127.0.0.1:631 
echo


