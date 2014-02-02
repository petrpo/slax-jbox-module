#!/bin/bash
# 2014-01-17 init script initilize directory "~", downloads repo, add Slax modules, copies files to /var/www 
# 2014-02-02 init script changed to easier repo downloading with git which has to be activated

WEB_DIR="/var/www/htdocs"
HOME_DIR="`pwd`"

GITHUB="https://github.com/petrpo"
REPO="slax-module.git"
REPO_DIR="slax-module"
ROOT_MYSQL="toor"

slax activate git
git clone https://github.com/petrpo/slax-module.git

# activate apache & php
bash $HOME_DIR/$REPO_DIR/bin/activate-apache-php.sh

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

