#!/bin/bash

echo "y" | sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
notify-send 'Kill-switch OFF' 'Maybe, maybe not, or maybe fuck off' --icon=dialog-information
