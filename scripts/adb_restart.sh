#!/bin/bash

sudo adb kill-server
sleep 2
sudo adb start-server
sleep 2
adb devices
