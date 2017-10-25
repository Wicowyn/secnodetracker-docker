# secnodetracker-docker
Docker image for [ZenCash Secure Node tracking app](https://github.com/ZencashOfficial/secnodetracker)

## Install

`docker build -t wicowyn/secnodetracker .`

## Environment variables


* `EMAIL` - Email to receive alerts
* `FQDN` - Domain name
* `IPV` - 4 to ipv4, 6 to ipv6
* `REGION` - Region code : North America(na) Europe(eu) Southeast Asia(sea)
* `HOME` - ts1.eu, ts1.na or ts1.sea. In accordance with region code 
* `HOST` - ip your node
* `PORT` - rpc port to connect
* `USER` - rpc user
* `PASSWORD` - rpc password
* `STAKE_ADDR` - Transparent address with 42 coins
* `NODE_ID` - node id (optional)

