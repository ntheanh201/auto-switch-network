#!/bin/bash

# turn off wired network
sudo ifconfig eno2 down

# turn off proxy network
gsettings set org.gnome.system.proxy mode 'none'

# turn on wifi
sudo nmcli radio wifi on

# turn off APT proxy
sh ./proxy-apt/disable.sh