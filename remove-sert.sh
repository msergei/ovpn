#!/bin/bash

source names.sh

docker run --rm -it -v $OVPN_DATA:/etc/openvpn $OVPN_IMAGE ovpn_revokeclient $1 remove
