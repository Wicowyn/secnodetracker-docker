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

ip4=$(dig A $HOST +short | grep '^[0-9]')
ip6=$(dig AAAA $HOST +short | grep '^[0-9]')

if [ ! -z $ip4 ]
then
    echo "externalip=${ip4}" >> $ZENCONF
fi

if [ ! -z $ip6 ]
then
    echo "externalip=${ip6}" >> $ZENCONF
fi

echo "rpcuser=${USER}" >> $ZENCONF
echo "rpcpassword=${PASSWORD}" >> $ZENCONF

node app
