ARG UPSTREAM_VERSION
FROM gnosischain/lighthouse-validator:v2.5.1-chiado

RUN apt-get update && apt-get install curl jq --yes
# Copy token
COPY security/api-token.txt /root/.lighthouse/validators/
COPY security/.secp-sk /root/.lighthouse/validators/

COPY entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh 

ENTRYPOINT [ "entrypoint.sh" ]