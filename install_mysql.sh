#!/bin/bash
echo ----- install mysql -----
echo

echo ------ installing mysql-server -----
echo
sudo apt-get -y install mysql-server

echo
echo ----- install mysql-client -----
echo
sudo apt-get -y install mysql-client

echo
echo ----- install python-mysqldb -----
echo
sudo apt-get -y install python-mysqldb

echo
echo ----- install python-pymysql-----
echo
sudo apt-get install python3-pymysql

echo
echo ----- configure mysql -----
echo
sudo mysql -u root -e "SET PASSWORD FOR root@localhost = PASSWORD('mablonde');"
sudo mysql -u root -pmablonde -e "DROP USER IF EXISTS pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE USER pi@localhost IDENTIFIED BY 'mablonde';"
sudo mysql -u root -pmablonde -e "GRANT ALL PRIVILEGES ON *.* TO pi@localhost;"

echo
echo ----- installation à la mode jo terminée ------
echo



