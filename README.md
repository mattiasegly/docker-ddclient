# rpi-ddclient
Raspberry Pi Docker Container for Loopia DynDNS Updates

Multiarch build using balena's Raspberry Pi image and docker's official Debian image.<BR>
Running with tag :latest should work on all Raspberry Pi models and standard 64-bit hardware. 

Creates a config to set and update the IP address for your Loopia domain.<BR>
If changes to the config file is necessary, the directory could be mounted by adding:<BR>
--mount type=bind,src=/some/path,dst=/ddclient

Run with:<BR>
docker run -d \\\
-e "DOMAIN=yourdomain.tld" \\\
-e "PASSWORD=cantguessthis" \\\
mattiasegly/rpi-ddclient:latest

I know nothing about code, so assume that everything here sets the world on fire.<BR>
Use at your own peril.

20201125
