#!/bin/sh

MODULES="apr apr-util httpd php"
for i in $MODULES
do
    printf "$i : "
    slax download $i
    slax activate $i
done

echo
echo "Necessary modules activated"

# without output
/usr/sbin/httpd & > /dev/null

echo
echo "httpd started in Slax"

