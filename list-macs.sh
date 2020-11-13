#!/bin/bash
#ifconfig | grep -i ether | awk '{print $2}'
ip -o link | grep ether | awk '{ print $2" : "$17 }' > /var/lib/tor-gui/macs
sed -i 's/: :/ /g' /var/lib/tor-gui/macs

