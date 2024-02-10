#!/bin/bash

echo "Create example conf if it doesn't exist..."
if [ ! -f /ddclient/ddclient.conf ]; then
cat > /ddclient/ddclient.conf << EOF
daemon=86400
ssl=yes

#Check IP
use=web
web=https://dyndns.loopia.se/checkip
web-skip='Current IP Address:'

#Update IP
protocol=dyndns2
server=dyndns.loopia.se
login=$USER
password=$PASSWORD

#Specify hostnames
$HOSTNAME
EOF
fi

echo "Finished! Run container."
exec "$@"
