#!/bin/bash
# 2014-01-26 first init of 

SRC_FILE="wget http://kent.dl.sourceforge.net/project/witty/wt/3.3.1/wt-3.3.1.tar.gz"

wget $SRC_FILE
tar -xvzpf $SRC_FILE
cd $SRC_FILE

slax buildscript download template
