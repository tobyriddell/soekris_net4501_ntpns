It is assumed that the GPS feed is coming from an Oncore board. 

Two sets of connections must be made from the Oncore board to the net4501 board: serial and PPS (pulse-per-second).

* Serial

The Oncore serial is TTL 5V and net4501 serial is RS232. Rather than convert 
from TTL to RS232 and back again on the MAX232 chip, a more elegant approach 
(credit Jason Rabel!) is to remove the MAX232 chip with a hot air gun and 
connect input and output using short jumper wires.