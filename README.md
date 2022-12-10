# secnodetracker-docker
Docker image for [ZenCash Secure Node tracking app](https://github.com/ZencashOfficial/nodetracker)

`docker pull yapiti/secnodetracker`

## Configuration

zen.conf is cleared at startup, so don't map it with zen.conf of your node.

### Environment variables

* `HOST` - domain or ip of your node
* `RPC_HOST` - host to use to connect on RPC
* `NODE_PORT` - node port (default: 9033)
* `RPC_PORT` - rpc port (default: 8233)
* `USER` - rpc user
* `PASSWORD` - rpc password

## Setup

`docker-compose run --rm tracker node setup`