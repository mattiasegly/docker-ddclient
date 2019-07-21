# docker-ddclient
Docker Container for Loopia DynDNS Updates<BR>
Creates a config to set and update the IP address for your Loopia domain.

Run with:<BR>
docker run -d -e "DOMAIN=yourdomain.tld" -e "PASSWORD=cantguessthis" mattiasegly/ddclient

If changes to the config file is necessary, the directory could be mounted by adding:<BR>
--mount type=bind,src=/some/path,dst=/ddclient

I know nothing about code, so assume that everything here sets the world on fire.<BR>
Use at your own peril.
