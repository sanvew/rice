#!/bin/bash

xbindkeys -f $XDG_CONFIG_HOME/xbindkeysrc
setxkbmap -layout "us,ru" -option "grp:alt_shift_toggle"
