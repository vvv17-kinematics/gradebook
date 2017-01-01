#!/bin/bash

# Copyright: (C) 2016 iCub Facility - Istituto Italiano di Tecnologia
# Authors: Ugo Pattacini <ugo.pattacini@iit.it>
# CopyPolicy: Released under the terms of the GNU GPL v3.0.

# Dependencies (through apt-get):
# - curl
# - jq

org=vvv17-kinematics
curdir=$(pwd)

if [ -d build ]; then 
    rm build -rf
fi
mkdir build && cd build

git clone https://github.com/vvv-school/vvv-school.github.io.git
if [ $? -ne 0 ]; then
    echo "GitHub seems unreachable"
    exit 1
fi

./vvv-school.github.io/scripts/gradebook.sh $org $curdir $curdir/build
