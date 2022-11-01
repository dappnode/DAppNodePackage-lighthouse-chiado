ARG UPSTREAM_VERSION
FROM gnosischain/lighthouse-validator:${UPSTREAM_VERSION}-chiado

RUN apt-get update && apt-get install curl jq --yes
# Copy token
COPY security/api-token.txt /root/.lighthouse/validators/
COPY security/.secp-sk /root/.lighthouse/validators/
COPY chiado /usr/testnet_data
COPY entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh 

ENTRYPOINT [ "entrypoint.sh" ]