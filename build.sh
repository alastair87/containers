#!/bin/sh

# /base/build.sh $@

# ./thermite/build.sh $@

cd base
./build.sh
cd -

cd thermite
./build.sh
cd -