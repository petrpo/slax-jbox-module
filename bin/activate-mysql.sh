#!/bin/sh
# 2014-01-31 script activates mysql on Slax

MODULES="libaio mysql"
for i in $MODULES
do
    echo "$i : "
#    slax download $i
    slax activate $i
done

echo
echo "Necessary modules activated"
mysql_install_db
chown -R mysql:mysql /var/lib/mysql
/usr/share/mysql/mysql.server start
