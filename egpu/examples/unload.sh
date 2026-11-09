#!/bin/bash

sleep 5
python3 nvidia_driver_reload.py --unload --yes
modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia
boltctl forget 15474c17-c0f7-c3e5-ffff-ffffffffffff
#echo "0" | sudo tee /sys/bus/thunderbolt/devices/0-1/authorized
echo "0" | sudo tee /sys/bus/thunderbolt/devices/1-1/authorized
