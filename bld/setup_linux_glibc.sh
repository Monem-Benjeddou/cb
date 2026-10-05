#!/bin/sh

# Toolchains for the linux (glibc) builds.  Runs in a debian:10 container
# so the results only need glibc 2.28 (RHEL 8 / Debian 10).

set -e

# buster is EOL, so its packages are on archive.debian.org
cat > /etc/apt/sources.list <<'EOF'
deb http://archive.debian.org/debian buster main
deb http://archive.debian.org/debian-security buster/updates main
EOF

apt-get update
apt-get install -y \
    ca-certificates curl binutils-multiarch \
    gcc \
    gcc-i686-linux-gnu \
    gcc-arm-linux-gnueabi \
    gcc-arm-linux-gnueabihf \
    gcc-aarch64-linux-gnu \
    gcc-mips64el-linux-gnuabi64 \
    gcc-s390x-linux-gnu \
    gcc-powerpc64le-linux-gnu \
    gcc-riscv64-linux-gnu
