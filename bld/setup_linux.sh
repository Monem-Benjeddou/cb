#!/bin/sh

# Toolchains for the linux musl builds.
# The glibc builds use setup_linux_glibc.sh instead.

sudo apt-get update
sudo apt-get install musl-dev musl-tools

mkdir crosscompilers
cd crosscompilers
wget https://musl.cc/arm-linux-musleabihf-cross.tgz
#wget https://ericsink.com/arm-linux-musleabihf-cross.tgz
tar --strip-components=1 -zxf ./arm-linux-musleabihf-cross.tgz
wget https://musl.cc/aarch64-linux-musl-cross.tgz
#wget https://ericsink.com/aarch64-linux-musl-cross.tgz
tar --strip-components=1 -zxf aarch64-linux-musl-cross.tgz
wget https://musl.cc/s390x-linux-musl-cross.tgz
tar --strip-components=1 -zxf s390x-linux-musl-cross.tgz
wget https://musl.cc/riscv64-linux-musl-cross.tgz
tar --strip-components=1 -zxf riscv64-linux-musl-cross.tgz
cd ..
