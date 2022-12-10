#!/bin/bash
set -e

CONFIG="/nodetracker/config/config.json"

if [ ! -f $CONFIG ]; then
   echo "Configuration file not present"
   echo "Type \"docker-compose run --rm tracker node setup\""

   exit 1
fi

touch $ZENCONF

echo "rpcallowip=${RPC_HOST}" > $ZENCONF
echo "rpcbind=${RPC_HOST}" >> $ZENCONF
echo "rpcconnect=${RPC_HOST}" >> $ZENCONF

echo "rpcport=${RPC_PORT}" >> $ZENCONF
echo "port=${NODE_PORT}" >> $ZENCONF

for ip in `getent hosts $HOST | awk '{ print $1 }'`; do
    echo "externalip=${ip}" >> $ZENCONF
done

echo "rpcuser=${USER}" >> $ZENCONF
echo "rpcpassword=${PASSWORD}" >> $ZENCONF

node app
