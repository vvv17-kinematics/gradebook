#!/bin/bash

# Copyright: (C) 2016 iCub Facility - Istituto Italiano di Tecnologia
# Authors: Ugo Pattacini <ugo.pattacini@iit.it>
# CopyPolicy: Released under the terms of the GNU GPL v3.0.

# Dependencies (through apt-get):
# - curl
# - jq

org=vvv17-kinematics
curdir=$(pwd)

rm build -rf
mkdir build && cd build

git clone https://github.com/vvv-school/vvv-school.github.io.git
./vvv-school.github.io/scripts/gradebook.sh $org $curdir
