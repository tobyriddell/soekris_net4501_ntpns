This repo. contains instructions and source code for setting up and running a Soekris net4501-based time server running Poul-Henning Kamp's ntpns.

The files are arrange as follows:

* top-level - scripts to setup VM and prepare source of ntpns and libphk (download source, extract and apply patches)
* /doc - contains instructions
* /patches - contains patches for ntpns

This builds on work done by many others, including:

* Poul-Hennng Kamp - original author of nanobsd and ntpns
* Rudi Van-Drunen - author of the Usenix article that first sparked my interest in this project
* Martin Topholm - write-up of his build: http://martin.topholm.eu/blog/2011/soekris-net-4501-ntp-server/
* Jason Rabel - write-up of his build: https://www.extremeoverclocking.com/articles/howto/Building_S1_NTP_Server_1.html

I've written patches so that ntpns will run on nanobsd built from FreeBSD 11.1, I wasn't able to get it to run on FreeBSD 11.2. 
The patches address security errors and disable the build of SNMP features (the SNMP build depends on scotty which I wasn't able to find/build).