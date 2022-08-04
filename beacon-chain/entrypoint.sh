#!/bin/bash

# Concatenate EXTRA_OPTS string
[[ -n "$CHECKPOINT_SYNC_URL" ]] && EXTRA_OPTS="${EXTRA_OPTS} --checkpoint-sync-url=${CHECKPOINT_SYNC_URL}"

##Required to add the bootnode flag and config file flag

exec lighthouse \
    --network gnosis \
    --debug-level $DEBUG_LEVEL \
    --paramsFile=/usr/config.yaml \
    --genesisStateFile=/usr/genesis.ssz \
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
    --network.discv5.bootEnrs=enr:-Ly4QBWdgA_Tt59pz3xeeMEIv9RXKjJn5pC4TiFxxmGcNrRAUTB5qVs6xTph7SLtLOPxlgn60mxaNyeAHc0inv1Zq40Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_LJMCJc2VjcDI1NmsxoQJW6aQs89Fzox8_YwwO1C-ubid5awCWhd8oUPP8s2VepYhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --network.discv5.bootEnrs=enr:-Ly4QLtEwF2plyYK6wINg8p2cEvON5uxBRTGDjOVY-alCgBzfYoNqzAnYtMTRbH5iZgXAxAweh90i9FEtbN2OvhKZcMBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_LJ0qJc2VjcDI1NmsxoQLYBUr39uZ3zPfC9XK0f-g22J2Z8DF1Ax3e444dwUmy0ohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --network.discv5.bootEnrs=enr:-Ly4QHyiqcUzJ4CtI6bhSTAZAD92UMEKwKCObZ-9hSZJAfgtXkj4JbAbhK33rXhqLFeO3isINvpPy_TUvoLB71__rOEBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_fJsSJc2VjcDI1NmsxoQJjSw3xd3o7Rj1DzE7Wxlr6mEbt5s2re4ANlP_TMDLmUohzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    --network.discv5.bootEnrs=enr:-Ly4QN9Ro8-E9gyCCUuEYWlSwCbfzc2NkUGmN8YRDmg4K3rRP1FBiaDe9TWKVGaXhmb8F6qwYxW5h83hS6LjF8nJK34Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhJ_fM6-Jc2VjcDI1NmsxoQNEtFv9oWxfpqPxFgpngTaWPHuGC6XEwaLdANypSZ-S2YhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \ 
    --network.discv5.bootEnrs=enr:-Ly4QMpHRs1843yWgB5yA2epcTBo4BrGrEB6b2fPAfxryjEEFzIUc_FOJ3b7r6h0bD_Gg-gCrX_mUgZZM8D7Xfot9J8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpD1_S08AQAAb1oAAAAAAAAAgmlkgnY0gmlwhLymbsOJc2VjcDI1NmsxoQKhmKRn59_w2tt_KNQ2Jhj-F3b9hxRkFYdtW3IGgXm0oIhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
    $EXTRA_OPTS