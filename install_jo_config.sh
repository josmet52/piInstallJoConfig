#!/bin/bash

echo install mysql
sudo apt-get install mysql-server
sudo apt-get install mysql-client
sudo apt-get install python-mysqldb
echo

#sudo apt-get install screen

echo install python-wxgtk2.8
sudo apt-get install python-wxgtk2.8
echo

echo install python-opencv
sudo apt-get install python-opencv
echo

echo install python-libxml2-dev
sudo apt-get install libxml2-dev
echo

echo install python-libxlst1-dev
sudo apt-get install libxslt1-dev
echo

echo install python-pandas
sudo apt-get install python-pandas
echo

echo install python-pymysql
sudo apt-get install python3-pymysql
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
echo

echo import jo projects from github
cd ..
mkdir projets_jo
cd projets_jo
git clone https://github.com/josmet52/tempLogger
git clone https://github.com/josmet52/inconfortMetre
cd ..
echo

echo configure mysql
#sh /home/pi/Documents/projets_jo/piInstallJoConfig/configure_mysql.sh

sudo mysql -u root -e "SET PASSWORD FOR root@localhost = PASSWORD('mablonde');"
sudo mysql -u root -pmablonde -e "DROP USER IF EXISTS pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE USER pi@localhost IDENTIFIED BY 'mablonde';"
sudo mysql -u root -pmablonde -e "GRANT ALL PRIVILEGES ON *.* TO pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE DATABASE tlogger;"
sudo mysql -u root -pmablonde < /home/pi/Documents/projets_jo/tempLogger/mysql/create_users_db_and_tables.sql


