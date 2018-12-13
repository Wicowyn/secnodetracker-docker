# secnodetracker-docker
Docker image for [ZenCash Secure Node tracking app](https://github.com/ZencashOfficial/nodetracker)

`docker pull yapiti/secnodetracker`

## Environment variables

* `HOST` - domain or ip of your node
* `NODE_PORT` - node port (default: 9033)
* `RPC_PORT` - rpc port (default: 8233)
* `USER` - rpc user
* `PASSWORD` - rpc password

## Setup

`docker-compose run --rm tracker node setup`