#!/bin/bash

echo ----- configure mysql -----
sudo mysql -u root -pmablonde -e "CREATE DATABASE tlogger;"
sudo mysql -u root -pmablonde < /home/pi/Documents/projets_jo/tempLogger/mysql/create_users_db_and_tables.sql
echo
echo
echo ----- installation à la mode jo terminée -----


