#!/bin/bash

TOUCHPAD=`xinput |egrep -i Touchpad|sed -re 's/.*id=([[:digit:]]{1,}).*/\1/'`

xinput set-prop $TOUCHPAD "Device Enabled" 0

#TODO: implementar em .profile
