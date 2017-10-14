#!/bin/bash
set -e

mkdir -p /secnodetracker/config
cd /secnodetracker/config

printf "${EMAIL}" > email
printf "${FQDN}" > fqdn
printf "${IPV}" > ipv

printf "${HOST}" > rpcallowip
printf "${HOST}" > rpcbind
printf "${HOST}" > rpcconnect
printf "${PORT}" > rpcport

printf "${USER}" > rpcuser
printf "${PASSWORD}" > rpcpassword

printf "${STAKE_ADDR}" > stakeaddr
printf "${SERVER_URL}" > serverurl

cd ..
node app.js
