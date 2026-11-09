#!/bin/bash

echo "1" | sudo tee /sys/bus/thunderbolt/devices/1-1/authorized
#echo "1" | sudo tee /sys/bus/thunderbolt/devices/0-1/authorized
boltctl authorize 15474c17-c0f7-c3e5-ffff-ffffffffffff
sleep 5
python3 nvidia_driver_reload.py --reload --yes
