#!/bin/bash

# Instal dependencies
apt update
apt upgrade -y apt
apt install -y vim git lib perl lsb-release libnl-route-3-dev perftest gdb linux-headers-4.15.0-45-generic

# Install OFED library
wget http://content.mellanox.com/ofed/MLNX_OFED-4.4-2.0.7.0/MLNX_OFED_LINUX-4.4-2.0.7.0-ubuntu16.04-x86_64.tgz
tar zxvf MLNX_OFED_LINUX-4.4-2.0.7.0-ubuntu16.04-x86_64.tgz
cd MLNX_OFED_LINUX-4.4-2.0.7.0-ubuntu16.04-x86_64
./mlnxofedinstall

export LD_LIBRARY_PATH="/usr/local/lib /usr/lib"
echo "/usr/local/lib
/usr/lib" > /etc/ld.so.conf.new
cat /etc/ld.so.conf >> /etc/ld.so.conf.new
mv /etc/ld.so.conf.new /etc/ld.so.conf

