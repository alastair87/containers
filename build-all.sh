#!/bin/sh

# /base/build.sh $@

# ./thermite/build.sh $@

cd ubuntu
./build.sh $@
cd -

cd thermite-base
./build.sh $@
cd -

cd thermite-avr
 ./build.sh $@
cd -