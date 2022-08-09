ARG UPSTREAM_VERSION
FROM sigp/lighthouse:${UPSTREAM_VERSION}

COPY chiado /usr/testnet_data

COPY jwtsecret.hex /jwtsecret
COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh 

EXPOSE $BEACON_API_PORT

EXPOSE 9000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]