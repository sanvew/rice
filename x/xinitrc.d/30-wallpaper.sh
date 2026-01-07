#!/bin/sh

killall -q xwallpaper

[ -x "$(command -v xwallpaper)" ] \
    && [ ! -z "$WALLPAPER_FILE" ] \
    && xwallpaper --daemon --zoom "$WALLPAPER_FILE"
