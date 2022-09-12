#!/bin/bash

echo "y" | sudo ufw enable
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out on tun0 from any to any
sudo ufw enable
notify-send 'Kill-switch ON' 'Maybe, maybe not, or maybe fuck off' --icon=dialog-information
