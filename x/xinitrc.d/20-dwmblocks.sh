#!/bin/sh

killall -q dwmblocks

STATUSBAR_PATH=~/.local/bin/statusbar
[ -x "$(command -v dwmblocks)" ] && PATH=$PATH:$STATUSBAR_PATH dwmblocks
