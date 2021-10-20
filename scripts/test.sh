#!/bin/bash

RE="USB"
DEVICES=$(cat /proc/asound/cards)

if [[ $DEVICES =~ $RE ]]; then
    echo "USB device available"
else
    echo "USB device unavailable"
fi
