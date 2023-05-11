#!/bin/bash

network_node=eno2
docker_enabled=false
apt_enabled=true

# turn off wifi
sudo nmcli radio wifi off

# turn on wired network
sudo ifconfig $network_node up

# turn manual proxy network
gsettings set org.gnome.system.proxy mode 'manual'


if [[ $docker_enabled = true ]]; then
  echo "Enable proxy for docker"
else
  echo "Docker proxy is disabled"
fi

if [[ $apt_enabled = true ]]; then
  echo "Enable APT proxy"
  sh ./proxy-apt/enable.sh
else
  echo "APT proxy is disabled"
fi