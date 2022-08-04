#!/bin/bash

# Concatenate EXTRA_OPTS string
[[ -n "$CHECKPOINT_SYNC_URL" ]] && EXTRA_OPTS="${EXTRA_OPTS} --checkpoint-sync-url=${CHECKPOINT_SYNC_URL}"

##Required to add the bootnode flag and config file flag

exec lighthouse \
    --debug-level $DEBUG_LEVEL \
    beacon_node \
    --datadir /root/.lighthouse \
    --http \
    --http-allow-origin "*" \
    --http-address 0.0.0.0 \
    --http-port $BEACON_API_PORT \
    --port $P2P_PORT \
    --metrics \
    --metrics-address 0.0.0.0 \
    --metrics-port 8008 \
    --metrics-allow-origin "*" \
    --execution-endpoint $HTTP_ENGINE \
    --execution-jwt "/jwtsecret" \
    $EXTRA_OPTS