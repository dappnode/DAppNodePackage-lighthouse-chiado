#!/bin/bash

## The configuration for the testnet chiado is done throught the --testnet-dir, this dir contains the files for running chiado

exec lighthouse \
    --debug-level $DEBUG_LEVEL \
    --datadir /root/.lighthouse \
    beacon_node \
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
    --testnet-dir=/usr/testnet_data \
    --boot-nodes=enr:-Ly4QHj22gbLGiBP_kPXlWQTv0BTNIHTjb9NDu8QzgmPf4scOOS41E_YrrcKbkpdAR87Yru0zZA8PJ_j-af3TKByiQ8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpBI6hZ8AQAAb1oAAAAAAAAAgmlkgnY0gmlwhIuQGlmJc2VjcDI1NmsxoQPAo05A-JtbPBWygjdfC4KpWHBOuY609ePLxbcHfVOtkohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA    $EXTRA_OPTS

