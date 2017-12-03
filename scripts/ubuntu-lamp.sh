#!/bin/bash

#Update Ubuntu with any patches
sudo apt-get -y update 

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
cd /vagrant 
sudo -u vagrant wget -q https://raw.githubusercontent.com/nanass03/DemoProvVagrant/master/files/index.html

sudo service apache2 start

