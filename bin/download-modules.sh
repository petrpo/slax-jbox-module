#!/bin/sh

MODULES="arp apr-util httpd php"
for i in $MODULES
do
    printf "$i : "
    slax download $i
    slax activate $i
done



