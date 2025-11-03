#!/bin/bash

python3 peer_node.py \
	--name B --listen 0.0.0.0 5001 \
	--peers A@192.168.122.204:5000 B@localhost:5001 C@192.168.122.200:5002 D@192.168.122.234:5003 \
	--logger 192.168.122.100 9999 \
	--offset-ms -600

