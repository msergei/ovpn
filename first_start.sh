#!/bin/bash

# Example usage: ./first_start.sh my_openvpn_server.com

if [ ! $1]; then
    export ADDR=$(curl https://ipinfo.io/ip);
else
    export ADDR=$1;
fi

echo "Set OpenVPN server address to $ADDR"

docker-compose run srv ovpn_genconfig -u udp://$ADDR;
docker-compose run srv ovpn_initpki;
