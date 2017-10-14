# secnodetracker-docker
Docker image for [ZenCash Secure Node tracking app](https://github.com/ZencashOfficial/secnodetracker)

## Install

`docker build -t wicowyn/secnodetracker .`

## Environment variables


* `EMAIL` - Email to receive alerts
* `FQDN` - Domain name
* `IPV` - 4 to ipv4, 6 to ipv6
* `HOST` - ip your node
* `PORT` - rpc port to connect
* `USER` - rpc user
* `PASSWORD` - rpc password
* `STAKE_ADDR` - Transparent address with 42 coins
* `SERVER_URL` - http://devtracksys.secnodes.com or https://tracksys.zensystem.io

