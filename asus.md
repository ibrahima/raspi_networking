# Asus Routers

Asus routers apparently block UPnP for port forwarding on ports below
1024 (even for the internal port, which is stupid). Either set up the
port forwarding manually or if you can ssh/telnet into your router,
run the following commands:

~~~~~~
nvram set upnp_min_port_int=1
nvram set upnp_max_port_int=65535
nvram set upnp_min_port_ext=1
nvram set upnp_max_port_ext=65535
nvram commit
reboot
~~~~~~
