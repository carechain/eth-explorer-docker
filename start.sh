#!/usr/bin/env sh

: ${GETH_HOSTNAME:="localhost"}
: ${GETH_RPCPORT:=8545}
: ${GETH_PROTOCOL:="http"}

cd /app
sed -i -e "s/{GETH_HOSTNAME}/${GETH_HOSTNAME}/" -e "s/{GETH_RPCPORT}/${GETH_RPCPORT}/" -e "s/{GETH_PROTOCOL}/${GETH_PROTOCOL}/" app/app.js

npm start
