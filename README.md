# rpi-ddclient
Docker container for Loopia DynDNS updates.<BR>
Multi-arch build using balena's Raspberry Pi image and docker's official Debian image.

Creates a config to set and update the IP address for your Loopia domain.<BR>
If changes to the config file is necessary, the directory could be mounted by adding:<BR>
--mount type=bind,src=/some/path,dst=/ddclient

Run with:<BR>
docker run -d \\\
-e "USER=yourdomain.tld" \\\
-e "PASSWORD=cantguessthis" \\\
-e "HOSTNAME=fqdn.domain.tld" \\\
--restart always \\\
mattiasegly/rpi-ddclient:latest

I know nothing about code, so assume that everything here sets the world on fire.<BR>
Use at your own peril.
