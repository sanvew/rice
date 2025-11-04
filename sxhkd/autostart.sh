#!/bin/sh

killall -q sxhkd

[ -x "$(command -v sxhkd)" ] && sxhkd
