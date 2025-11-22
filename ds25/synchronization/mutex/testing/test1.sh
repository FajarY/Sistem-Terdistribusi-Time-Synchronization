#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 192.168.122.121:8001,192.168.122.161:8001,192.168.122.85:8001,192.168.122.37:8001,192.168.122.213:8001 cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py  --nodes 192.168.122.121:8001,192.168.122.161:8001,192.168.122.85:8001,192.168.122.37:8001,192.168.122.213:8001 cmd --node 2   "GET color"


# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.122.121:8001,192.168.122.161:8001,192.168.122.85:8001,192.168.122.37:8001,192.168.122.213:8001 race  "PUT color blue" "PUT color red"


# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.122.121:8001,192.168.122.161:8001,192.168.122.85:8001,192.168.122.37:8001,192.168.122.213:8001  getall color