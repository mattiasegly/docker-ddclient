#!/bin/bash

echo "Create example conf if it doesn't exist..."
if [ ! -f /ddclient/ddclient.conf ]; then
cat > /ddclient/ddclient.conf << EOF
daemon=300
ssl=yes

#Check IP
use=web
web=dyndns.loopia.se/checkip
web-skip='Current IP Address:'

#Update IP
server=dyndns.loopia.se
login=$DOMAIN
password=$PASSWORD

#Specify hostnames
$DOMAIN
EOF
fi

echo "Finished! Run container."
exec "$@"
