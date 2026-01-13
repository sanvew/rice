#!/bin/sh

killall -q playerctld

[ -x "$(command -v playerctld)" ] && playerctld daemon

