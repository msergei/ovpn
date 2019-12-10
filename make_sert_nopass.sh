#!/bin/bash

if [ ! $1 ]; then
  echo "Please set device_name!";
  exit 1;
fi

./make_sert.sh $1 nopass
