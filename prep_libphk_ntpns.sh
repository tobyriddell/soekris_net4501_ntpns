#!/bin/sh

# Download source code for ntpns and libphk and extract
ftp http://phk.freebsd.dk/NTPns/phkrel/NTPns.20080902.tgz
ftp http://phk.freebsd.dk/NTPns/phkrel/Libphk.20080902.tgz

tar -zxf NTPns.20080902.tgz
tar -zxf Libphk.20080902.tgz

# Apply patches to address security warnings and disable SNMP
patch < dcf77.c.diff
patch < log.c.diff
patch < main.c.diff
patch < main_Makefile.diff
patch < Makefile.diff
patch < partner.c.diff
patch < source.c.diff

