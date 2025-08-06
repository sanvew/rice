#!/bin/bash

TOUCHPAD_ID=$(xinput list | grep -i touchpad | grep -o 'id=[0-9]\+' | cut -d= -f2)
if [ -n "$TOUCHPAD"]; then
    xinput set-prop "$TOUCHPAD_ID" "libinput Tapping Enabled" 1
    xinput set-prop "$TOUCHPAD_ID" "libinput Tapping Drag Enabled" 1
    xinput set-prop "$TOUCHPAD_ID" "libinput Tapping Drag Lock Enabled" 1
    xinput set-prop "$TOUCHPAD_ID" "libinput Natural Scrolling Enabled" 1
fi
