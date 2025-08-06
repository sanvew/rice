#!/bin/bash

if [ -f "$XDG_CONFIG_HOME/polybar/launch.sh" ]; then
    $XDG_CONFIG_HOME/polybar/launch.sh &
elif [ -f "$HOME/.config/polybar/launch.sh" ]; then
    $HOME/.config/polybar/launch.sh &
elif [ -f "/etc/xdg/polybar/launch.sh" ]; then
    /etc/xdg/polybar/launch.sh &
fi
