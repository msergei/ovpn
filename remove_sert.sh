#!/bin/bash

# Example usage:
MESS="./remove_sert.sh my_device_name"


if [ ! $1 ]; then
  echo "Please set device_name, for example: $MESS";
  exit 0;
fi

docker compose run --rm srv ovpn_revokeclient $1 remove;
