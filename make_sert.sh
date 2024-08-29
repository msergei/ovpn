#!/bin/bash

if [ ! $1 ]; then
  echo "Please set device_name!";
  exit 1;
fi

docker compose run --rm srv easyrsa build-client-full $1 $2 && docker compose run --rm srv ovpn_getclient $1 > $1.ovpn
