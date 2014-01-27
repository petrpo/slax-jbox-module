#!/bin/bash
# 2014-01-26 first init of 

SRC_FILE="wt-3.3.1"
URL="http://kent.dl.sourceforge.net/project/witty/wt/3.3.1/"
PARA="-j4"

# download dependencies to compile wt
slax activate icu4c
slax activate boost
slax activate cmake
slax buildscript download template

#############################################
# If file is here We will not download it   #
#############################################
if [ -f $URL$SRC_FILE.tar.gz ]
then
        echo "I am downloading $URL$SRC_FILE.tar.gz"
        wget $URL$SRC_FILE.tar.gz
fi

echo "Untar a file"
tar -xvzpf $SRC_FILE.tar.gz
cd $SRC_FILE
mkdir build
cd build

cmake -D DEPLOYROOT=/var/www/wt \
    -D WEBUSER=apache \
    -D BUILD_SHARED_LIBS=ON \
    -D CONFIGURATION=/etc/wt \
    -D BOOST_COMPILER=gcc \
    -D BOOST_DIR=/usr \
    -D RUNDIR=/var/run \
    -D CMAKE_INSTALL_PREFIX=/usr \
    -D HTTP_WITH_SSL=true \
    -D CONNECTOR_FCGI=true \
    -D EXAMPLES_CONNECTOR=wthttp \
    -D WEBGROUP=users \
    ../

make $PARA
make $PARA -C examples

