
ARG UPSTREAM_VERSION
FROM debian:bullseye-slim as binary


RUN DEBIAN_FRONTEND=noninteractive \
    apt update && apt install --assume-yes --no-install-recommends wget ca-certificates && \
    wget -q https://raw.githubusercontent.com/gnosischain/lighthouse-client/main/chiado/config.yaml -O  /tmp/config.yaml && \
    wget -q https://github.com/gnosischain/lighthouse-client/blob/main/chiado/genesis.ssz?raw=true -O /tmp/genesis.ssz && \
    wget -q https://raw.githubusercontent.com/gnosischain/lighthouse-client/main/chiado/deploy_block.txt -O /tmp/deploy_block.txt


FROM sigp/lighthouse:${UPSTREAM_VERSION}

COPY --from=binary /tmp/config.yaml /testnet
COPY --from=binary /tmp/genesis.ssz /testnet
COPY --from=binary /tmp/deploy_block.txt /testnet

COPY jwtsecret.hex /jwtsecret
COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh 

EXPOSE $BEACON_API_PORT

EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]