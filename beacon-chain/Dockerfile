ARG UPSTREAM_VERSION
FROM gnosischain/lighthouse-beacon:${UPSTREAM_VERSION}-chiado
COPY chiado /usr/testnet_data

COPY jwtsecret.hex /jwtsecret
COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh 

EXPOSE $BEACON_API_PORT

EXPOSE $P2P_PORT

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
