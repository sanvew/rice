#!/bin/sh

killall -q picom

CONFIG_FILE="$XDG_CONFIG_HOME"/picom.conf

[ -x "$(command -v picom)" ] && picom --daemon --config "$CONFIG_FILE"
