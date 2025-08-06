#!/bin/bash

DEFAULT_NODE_NAMES=(
    "alsa_input.pci-0000_04_00.6.HiFi__Mic1__source:Int Mic"
)
IFS=""

bash -c "pulseaudio-control \
--node-type input \
--icons-volume "" \
--icon-muted "" \
--node-nicknames-from "device.description" \
$(for node in ${DEFAULT_NODE_NAMES[@]}; do echo -n --node-nickname "\"$node\" "; done) \
listen"
