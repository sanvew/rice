#!/bin/sh

LOCK_TIMEOUT=5
SCREENLOCK_SRIPT="screenlock"

[ -x "$(command -v xidlehook)" ] \
    && xidlehook --not-when-fullscreen --not-when-audio \
        --timer "$(echo "$LOCK_TIMEOUT*60" | bc)" "$SCREENLOCK_SRIPT" ""
