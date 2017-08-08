# CareChain Ethereum block explorer Docker image

      eth-explorer:
        image: carechain/eth-explorer
        ports:
          - "8000:8000"
        environment:
          - GETH_HOSTNAME=${API_HOST}
          - GETH_RPCPORT=${API_HOST_PORT}
