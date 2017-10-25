#!/bin/bash
set -e

mkdir -p /secnodetracker/config
cd /secnodetracker/config

printf "${EMAIL}" > email
printf "${FQDN}" > fqdn
printf "${IPV}" > ipv
printf "${REGION}" > region
printf "${HOME}" > home

printf "${HOST}" > rpcallowip
printf "${HOST}" > rpcbind
printf "${HOST}" > rpcconnect
printf "${PORT}" > rpcport

printf "${USER}" > rpcuser
printf "${PASSWORD}" > rpcpassword

printf "${STAKE_ADDR}" > stakeaddr
printf "ts1.eu,ts1.na,ts1.sea" > servers

if [ ! -z "$NODE_ID" ]; then
  printf "${NODE_ID}" > nodeid
fi

cd ..
node app.js
