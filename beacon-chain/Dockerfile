ARG UPSTREAM_VERSION
FROM sigp/lighthouse:${UPSTREAM_VERSION}

RUN apt update && apt install curl --yes && \
    curl https://raw.githubusercontent.com/gnosischain/consensus-deployment-ansible/master/chiado/custom_config_data/bootnodes_consensus.txt -o bootnodes.yaml && \
    curl https://github.com/gnosischain/consensus-deployment-ansible/blob/master/chiado/custom_config_data/config.yamll -o config.yml

COPY entrypoint.sh entrypoint.sh
COPY jwtsecret.hex /jwtsecret

EXPOSE $BEACON_API_PORT

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]