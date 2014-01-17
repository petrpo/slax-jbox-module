#!/bin/sh

MODULES="php httpd"
for i in $MODULES
do
    printf "$i : "
    slax download $i
    slax activate $i
done

#slax download php httpd
#slax activate php httpd


