This document describes the setup of a VirtualBox virtual machine which is used to build the nanobsd boot image and ntpns.

## Building the virtual machine

1. Download and install Oracle VirtualBox
1. Download the FreeBSD 11.1 ISO FreeBSD-11.1-RELEASE-i386-disc1.iso from http://ftp.freebsd.org/pub/FreeBSD/releases/ISO-IMAGES/11.1/ or a mirror
1. Create a new virtual machine with type 'BSD', version 'FreeBSD (32-bit)' and 2GB RAM, 16GB hard drive
1. If you have sufficient CPU power on the computer where the VM will run, change the settings to give the virtual machine 4 CPUs (this will speed  up compilation steps)
1. Attach the FreeBSD ISO that you downloaded as the CD-ROM device
1. Start the virtual machine, hit F12 to choose boot device and select CD-ROM, choose 'Boot Multi User' (this is the default option, you can just wait)
1. Choose default install options, except that you don't need to create local users (you may also have to modify keymap)
1. Finish installation (set root password), shut down the virtual machine and unmount the CD-ROM device
1. Boot the virtual machine from its virtual hard drive

## Setup build environment

1. Logon to the newly-created virtual machine as root
1. Build and install git:
```
make -C /usr/ports/devel/git install clean BATCH=yes
```
(this will take a while to run as there are a number of dependencies that also need to be built)
1. Clone the repo. from github:
```
git clone git@github.com:tobyriddell/soekris_net4501_ntpns.git
```
1. Change to the soekris_net4501_ntpns directory and run the setup script:
```
cd soekris_net4501_ntpns
sh ./vm_setup.sh
```
(this takes around 5-10 minutes to run and the script has 'set -e' so it will quit on any errors)

## Prepare source for libphk and ntpns

1. Download source code, apply patches (still in soekris_net4501_ntpns directory)
```
sh ./prep_libphk_ntpns.sh
```

## Build nanobsd

1. Build nanobsd with the following command (still in soekris_net4501_ntpns directory) (takes 8-10 mins)
```
sh /usr/src/tools/tools/nanobsd/nanobsd.sh -c nanobsd/cfg/timelord.nano
```
The log files for building nanobsd are in /usr/obj/nanobsd.net4501_ntpns_1.0





