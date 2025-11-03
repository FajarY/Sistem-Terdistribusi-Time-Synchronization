#!/bin/bash

python3 peer_node.py \
	  --name C --listen 0.0.0.0 5002 \
	  --peers A@192.168.122.204:5000 B@192.168.122.150:5001 C@localhost:5002 D@192.168.122.234:5003 \ 
	  --logger 192.168.122.100 9999 \
	  --offset-ms 600

