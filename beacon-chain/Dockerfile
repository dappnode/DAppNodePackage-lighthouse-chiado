ARG UPSTREAM_VERSION
FROM gnosischain/prysm-beacon:${UPSTREAM_VERSION}-chiado

RUN apt update && apt update --yes && \
    wget -q https://github.com/gnosischain/lighthouse-client/blob/main/chiado/config.yaml -O  config.yml && \
    wget -q https://github.com/gnosischain/lighthouse-client/blob/main/chiado/genesis.ssz?raw=true -O genesis.ssz

COPY entrypoint.sh entrypoint.sh
COPY jwtsecret.hex /jwtsecret

EXPOSE $BEACON_API_PORT

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]