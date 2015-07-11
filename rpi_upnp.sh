#!/usr/bin/env bash

# Install the miniupnpc package if it's not installed
if ! which upnpc > /dev/null; then
    sudo apt-get install miniupnpc
fi

echo "If you have an ASUS router, you may need to do some further configuration for your router. See asus.md"

# Get the ethernet and wifi IP addresses
ETH_IP=`ifconfig eth0 | grep "inet addr" | cut -d : -f 2 | cut -d " " -f 1`
WIFI_IP=`ifconfig wlan0 | grep "inet addr" | cut -d : -f 2 | cut -d " " -f 1`

IP=${ETH_IP:-$WIFI_IP} # Choose the IP of connected network interface, preferring ethernet

echo "Your LAN IP address is "$IP

EXTERNAL_PORT=10022    # You can set this to anything above 1024

upnpc -a $IP 22 $EXTERNAL_PORT TCP

echo "Congratulations, your external port forwarding setup should be complete! If you have a dynamic DNS service (eg. DuckDNS), you can now ssh pi@your.duckdns.org -p $EXTERNAL_PORT"
echo "You may need to re-run this script if your router reboots. You can set it up using a cron job if you wish."
