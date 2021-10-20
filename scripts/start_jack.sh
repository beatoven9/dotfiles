#!/bin/bash

RE="USB"
DEVICES=$(cat /proc/asound/cards)

if [[ $DEVICES =~ $RE ]]; then
   DEVICE="USB" 
else
   DEVICE="PCH" 
fi

jack_control start
jack_control ds alsa
jack_control dps device hw:"$DEVICE"
jack_control dps rate 48000
jack_control dps nperiods 3 
jack_control dps period 256
sleep 10
qjackctl &

