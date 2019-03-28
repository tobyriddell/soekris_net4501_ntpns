#!/bin/sh

# Download source code for ntpns and libphk and extract
ftp http://phk.freebsd.dk/NTPns/phkrel/NTPns.20080902.tgz
ftp http://phk.freebsd.dk/NTPns/phkrel/Libphk.20080902.tgz

tar -zxf NTPns.20080902.tgz
tar -zxf Libphk.20080902.tgz

# Compile libphk
export DESTDIR=/usr/obj/nanobsd.net4501_ntpns_1.0
(cd Libphk && make && make install)

# Apply patches
