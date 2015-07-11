# DuckDNS

[DuckDNS](https://www.duckdns.org) is a simple Dynamic DNS service. This means that it gives you
a domain like my-pi.duckdns.org, and you can set up a script on your
Raspberry Pi that will update the DNS information for that subdomain
with your IP address.

## Setup:

1. Sign up on [duckdns.org](https://www.duckdns.org).

2. Choose a subdomain, press add.

3. Click install link at the top.

4. Choose your subdomain

5. Click the "pi" button.

6. Follow the instructions to copy the script into the proper place.

7. Success! If you've forwarded the port on your router for your Raspberry Pi (or it's just open), you can now run `ssh pi@your-subdomain.duckdns.org -p 10022` (or whatever port you chose) from anywhere.
