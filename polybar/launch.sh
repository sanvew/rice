#!/bin/bash

killall -q polybar

# create log directory
LOG_DIR=$XDG_DATA_HOME/polybar/log
mkdir -p $LOG_DIR

# backup logs from previous session
for log_file in $LOG_DIR/*.log; do
    cp "$log_file" "$log_file.old"
done

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main-top 2>&1 | tee $LOG_DIR/$m.log & disown
done

echo "Polybar launched..."
