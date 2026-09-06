#!/bin/sh

LOCK_TIMEOUT=5
SCREENLOCK_SCRIPT="screenlock"

if [ -x "$(command -v xidlehook)" ]; then
  xidlehook --not-when-fullscreen --not-when-audio --timer "$(echo "$LOCK_TIMEOUT*60" | bc)" "$SCREENLOCK_SCRIPT" ""
fi
