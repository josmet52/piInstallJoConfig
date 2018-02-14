sudo mysql -u root -e "SET PASSWORD FOR root@localhost = PASSWORD('mablonde');"
sudo mysql -u root -pmablonde -e "DROP USER IF EXISTS pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE USER pi@localhost IDENTIFIED BY 'mablonde';"
sudo mysql -u root -pmablonde -e "GRANT ALL PRIVILEGES ON *.* TO pi@localhost;"
sudo mysql -u root -pmablonde -e "CREATE DATABASE tlogger;"
sudo mysql -u root -pmablonde < /home/pi/Documents/projets_jo/tempLogger/mysql/create_users_db_and_tables.sql