#!/bin/bash
set -e

CONFIG="/nodetracker/config/config.json"

if [ ! -f $CONFIG ]; then
   echo "Configuration file not present"
   echo "Type \"docker-compose run --rm tracker node setup\""

   exit 1
fi

touch $ZENCONF

echo "rpcallowip=${HOST}" > $ZENCONF
echo "rpcbind=${HOST}" >> $ZENCONF
echo "rpcconnect=${HOST}" >> $ZENCONF
echo "rpcport=${PORT}" >> $ZENCONF

for ip in `getent hosts $HOST | awk '{ print $1 }'`; do
    echo "externalip=${ip}" >> $ZENCONF
done

echo "rpcuser=${USER}" >> $ZENCONF
echo "rpcpassword=${PASSWORD}" >> $ZENCONF

# Bypass inital tracker checkup
echo "port=1111" >> $ZENCONF

node app
