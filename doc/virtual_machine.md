This document describes the setup of a VirtualBox virtual machine which is used to build the nanobsd boot image and ntpns.

** Building the virtual machine

1. Download the FreeBSD 11.1 ISO FreeBSD-11.1-RELEASE-i386-disc1.iso from http://ftp.freebsd.org/pub/FreeBSD/releases/ISO-IMAGES/11.1/ or a mirror
2. Download and install Oracle VirtualBox
3. Create a new virtual machine with type 'BSD', version 'FreeBSD (32-bit)' and 2GB RAM, 16GB hard drive
4. Change the settings to give the virtual machine 4 CPUs (this will speed  up compilation steps)
5. Attach the FreeBSD ISO as the CD-ROM device
6. Start the virtual machine, hit F12 to choose boot device and select CD-ROM
7. Choose default install options unless you have to modify them (e.g. keymap)
8. Finish installation (setup network, root password, etc.) and reboot the virtual machine from its hard drive

** Setup build environment



