#!/bin/sh

TMP_DIR="~/tmp"
REPO_ARCH="https://github.com/petrpo/slax-jbox-module/archive/"
MASTER="master.zip"

#MODULES="apr apr-util httpd php"
#for i in $MODULES
#do
#    echo "$i : "
#    slax download $i
#    slax activate $i
#done
#
#echo
#echo "Necessary modules activated"
#
# without output
#/usr/sbin/httpd & > /dev/null
#
#echo
#echo "httpd started in Slax"

mkdir TMP_DIR

wget $REPO_MASTER

unzip $REPO_ARCH$MASTER -d $TMP_DIR
