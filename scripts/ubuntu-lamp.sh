#!/bin/bash

#Update Ubuntu with any patches
sudo apt-get -y update --exclude=kernel

sudo apt-get install -y nano git unzip screen

#Apache
sudo apt-get install -y apache2
sudo service apache2 stop

rm -rf /var/www
ln -s /vagrant /var/www


#MySQL
sudo apt-get install -y mysql-server
sudo service mysql start

mysql -u root -e "SHOW DATABASES;"

# Download starter content

sudo service apache2 start

