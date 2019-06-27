#!/bin/sh

# Download source code for ntpns and libphk and extract
ftp http://phk.freebsd.dk/NTPns/phkrel/NTPns.20080902.tgz
ftp http://phk.freebsd.dk/NTPns/phkrel/Libphk.20080902.tgz

tar -zxf NTPns.20080902.tgz
tar -zxf Libphk.20080902.tgz

# Apply patches to address security warnings and disable SNMP
patch < patches/dcf77.c.diff
patch < patches/log.c.diff
patch < patches/main.c.diff
patch < patches/main_Makefile.diff
patch < patches/Makefile.diff
patch < patches/partner.c.diff
patch < patches/source.c.diff

