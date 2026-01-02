#!/bin/sh

killall -q xwallpaper

WALLPAPER_PATH=~/Pictures/walls/P60502-093143.jpg
[ -x "$(command -v xwallpaper)" ] && xwallpaper --daemon --zoom "$WALLPAPER_PATH"
