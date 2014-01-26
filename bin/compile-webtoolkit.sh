#!/bin/bash
# 2014-01-26 first init of 

SRC_FILE="wt-3.3.1.tar.gz"
URL=http://kent.dl.sourceforge.net/project/witty/wt/3.3.1/"

# download dependencies to compile wt
slax activate boost
slax buildscript download template

wget $URL$SRC_FILE
tar -xvzpf $SRC_FILE
cd $SRC_FILE
mkdir build
cd build
cmake ..
