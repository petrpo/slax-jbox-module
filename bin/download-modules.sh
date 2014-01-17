#!/bin/sh

MODULES="apr apr-util httpd php"
for i in $MODULES
do
    printf "$i : "
    slax download $i
    slax activate $i
done

echo "Necessary modules activated"

/usr/sbin/httpd &

echo "httpd started in Slax"

