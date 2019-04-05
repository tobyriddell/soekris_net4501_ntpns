#!/bin/sh

# If anything fails to work as expected then exit
set -e 

make -C /usr/ports/devel/subversion install clean BATCH=yes
make -C /usr/ports/sysutils/screen install clean BATCH=yes
make -C /usr/ports/devel/configkit install clean BATCH=yes
make -C /usr/ports/lang/tcl84 install clean BATCH=yes
make -C /usr/ports/ftp/wget install clean BATCH=yes
make -C /usr/ports/shells/bash install clean BATCH=yes
make -C /usr/ports/lang/perl5.24 install clean BATCH=yes
make -C /usr/ports/comms/minicom install clean BATCH=yes

svn co svn://svn.freebsd.org/base/releng/11.1 /usr/src
