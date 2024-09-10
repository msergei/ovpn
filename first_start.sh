#!/bin/bash

# Example usage: ./first_start.sh my_openvpn_server.com

if [ ! $1 ]; then
    export ADDR=$(curl https://ipinfo.io/ip);
else
    export ADDR=$1;
fi

if [ ! $2 ]; then
    export PROTO=udp;
else
    export PROTO=$2;
fi

echo "Set OpenVPN server address to $ADDR and $PROTO"

docker compose run srv ovpn_genconfig -u $PROTO://$ADDR;
docker compose run srv ovpn_initpki;
