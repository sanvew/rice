#!/bin/sh
socat -u UNIX-CONNECT:/run/acpid.socket - | while read -r kind _ state _; do
  case "$kind $state" in
    "button/lid close") screenlock -i -s ;;
  esac
done
