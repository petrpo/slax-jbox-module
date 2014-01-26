#!/bin/bash
# 2014-01-26 first init of 

SRC_FILE="wt-3.3.1.tar.gz"
URL="http://kent.dl.sourceforge.net/project/witty/wt/3.3.1/"

# download dependencies to compile wt
slax activate icu4c
slax activate boost
slax buildscript download template

wget $URL$SRC_FILE
tar -xvzpf $SRC_FILE
cd `echo $SRC_FILE | awk -F.tar.gz '{print $1}'`
mkdir build
cd build
cmake ..
