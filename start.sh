#!/usr/bin/env sh

: ${GETH_HOSTNAME:="localhost"}
: ${GETH_RPCPORT:=8545}

cd /app
sed -i -e "s/{GETH_HOSTNAME}/${GETH_HOSTNAME}/" -e "s/{GETH_RPCPORT}/${GETH_RPCPORT}/" app/app.js

npm start
