#!/bin/sh

pushd base
build.sh --no-cache
popd

pushd pakled
build.sh --no-cache
popd