#Remove sonar
sudo service sonar stop
sudo apt-get -y purge sonar

#Remove java
sudo apt-get -y purge oracle-java8-installer

#Remove mysql
sudo apt-get -y purge mysql-server mysql-client mysql-common mysql-server-core-5.6 mysql-client-core-5.6
sudo rm -rf /etc/mysql /var/lib/mysql
sudo apt-get -y autoremove
sudo apt-get -y autoclean

