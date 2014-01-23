#!/bin/sh

MODULES="apr apr-util httpd php libaio mysql"
for i in $MODULES
do
    echo "$i : "
    slax download $i
    slax activate $i
done

echo
echo "Necessary modules activated"
