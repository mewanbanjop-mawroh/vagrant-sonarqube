###################
#Install SonarQube#
###################
#Author : Mewan   #
###################

MYSQLPASS="<YOUR_PASSWORD_HERE>"

#Install mysql silently
sudo apt-get update
echo "mysql-server-5.6 mysql-server/root_password password "$MYSQLPASS | sudo debconf-set-selections
echo "mysql-server-5.6 mysql-server/root_password_again password "$MYSQLPASS | sudo debconf-set-selections
sudo apt-get -y install mysql-server-5.6
mysql -uroot -p$MYSQLPASS < /vagrant/sql/sonar.sql

#Install Oracle Java Silently
sudo apt-add-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer

#Install sonar
echo "deb http://downloads.sourceforge.net/project/sonar-pkg/deb binary/" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y --force-yes sonar
mkdir /home/ubuntu/tmp
sudo cp -f /vagrant/conf/* /opt/sonar/conf/
sudo service sonar start

