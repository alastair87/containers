#!/bin/sh

apt-get update && \
apt-get upgrade -y && \
apt-get install -y gcc-avr avrdude bison flex libncurses-dev picocom && \
apt-get clean && \
usermod -aG dialout $1