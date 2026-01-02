#!/bin/sh

killall -q picom

[ -x "$(command -v picom)" ] && picom --daemon --config "$XDG_CONFIG_HOME"/picom.conf
