#!/bin/bash

BLACKLISTED_NODE_NAMES=(
    # sink's monitor
    "*.monitor"
)

bash -c "pulseaudio-control \
--node-type input \
$(for node in ${BLACKLISTED_NODE_NAMES[@]}; do echo -n --node-blacklist "\"$node\" "; done) \
next-node"
