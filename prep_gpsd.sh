#!/bin/sh

# Download source code for gpsd and extract
wget http://download-mirror.savannah.gnu.org/releases/gpsd/gpsd-3.18.1.tar.gz

tar -zxf gpsd-3.18.1.tar.gz

# Apply patch
patch < patches/SConstruct.diff

# Build gpsctl
cd gpsd-3.18.1
scons minimal=Yes gpsd=True gpsdclients=True oncore=True qt=False python=False
