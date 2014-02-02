#!/bin/bash
# 2014-01-17 init script initilize directory "~", downloads repo, add Slax modules, copies files to /var/www 

WEB_DIR="/var/www/htdocs"
HOME_DIR="`pwd`"
TMP_DIR="tmp"
GITHUB="https://github.com/petrpo"
REPO="slax-jbox-module"
REPO_MASTER="slax-module-master"
ARCH="archive"
MASTER="master.zip"
ROOT_MYSQL="toor"

mkdir $HOME_DIR/$TMP_DIR
#echo $HOME_DIR$TMP_DIR
#exit

wget $GITHUB/$REPO/$ARCH/$MASTER

unzip $MASTER -d $TMP_DIR

bash $HOME_DIR/$TMP_DIR/$REPO_MASTER/bin/activate-modules.sh

echo "Modules for Jbox are activated"
echo 

cp $HOME_DIR/$TMP_DIR/$REPO_MASTER/www/* $WEB_DIR

echo "Include /etc/httpd/mod_php.conf" >> /etc/httpd/httpd.conf
echo



mysqladmin -u root password $MYSQL_ROOT
echo "Mysql root password created: $MYSQL_ROOT"

# execute apps
/usr/sbin/httpd &
sleep 2
/usr/bin/firefox http://localhost/ &

