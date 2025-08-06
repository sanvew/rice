#!/bin/bash

DEFAULT_NODE_NAMES=(
    "alsa_output.pci-0000_04_00.6.HiFi__Speaker__sink:Int Speaker"
)
IFS=""

bash -c "pulseaudio-control \
--node-type output \
--icons-volume \" , \" \
--icon-muted \" \" \
--node-nicknames-from "device.description" \
$(for node in ${DEFAULT_NODE_NAMES[@]}; do echo -n --node-nickname "\"$node\" "; done) \
listen"

