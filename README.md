# ubuntu-utils

./wifi.sh will turn off wired network, switch to none proxy and then turn on the wifi, always disable proxy for apt by default

./ethernet.sh will turn off the wifi, turn on wired network, switch to manual proxy, enable proxy for apt by default

# Prerequisites

sudo apt install net-tools

# Getting started
1. update proxy in proxy-apt/apt.conf
2. update network_mode in ./ethernet.sh

# TODO

[ ] Toggle proxy for Docker