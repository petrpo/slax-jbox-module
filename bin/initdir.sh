#!/bin/bash
# 2014-01-17 init script initilize directory "~", downloads repo, add Slax modules, copies files to /var/www 

TMP_DIR="tmp/"
GITHUB="https://github.com/petrpo/"
REPO="slax-jbox-module/"
REPO_MASTER="slax-jbox-module-master"
ARCH="archive/"
MASTER="master.zip"

mkdir $TMP_DIR

wget $GITHUB$REPO$ARCH$MASTER

unzip $MASTER -d $TMP_DIR

bash ~/$REPO_MASTER/bin/activate-modules.sh

echo "Modules for Jbox are activated"

