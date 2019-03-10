#!/bin/bash

echo "Create example conf if it doesn't exist..."
if [ ! -f /ddclient/ddclient.conf ]; then
cat > /ddclient/ddclient.conf << EOF
daemon=300
ssl=yes

protocol=dyndns2
custom=yes
server=dyndns.loopia.se
use=web, web=dyndns.loopia.se/checkip, 
web-skip='Current IP Address:'

login=$DOMAIN
password=$PASSWORD

$DOMAIN
wildcard=yes
EOF
fi

echo "Finished! Run container."
exec "$@"
