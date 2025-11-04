#!/bin/sh

killall -q xidlehook

LOCK_TIMEOUT=$(echo "5*60" | bc)
SCREEN_LOCKER_CMD=slock

[ -x "$(command -v xidlehook)" ] \
    && xidlehook --not-when-fullscreen --not-when-audio \
        --timer $LOCK_TIMEOUT "$SCREEN_LOCKER_CMD" ""
