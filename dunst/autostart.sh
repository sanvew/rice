#!/bin/sh

killall -q dunst

CONFIG_FILE="$XDG_CONFIG_HOME"/dunst/dunstrc
[ -x "$(command -v dunst)" ] && dunst --config $CONFIG_FILE
