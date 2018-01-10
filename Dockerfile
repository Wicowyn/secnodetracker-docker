FROM node:8-alpine

LABEL maintener wicowyn@gmail.com

# RUN apt update \
#     && DEBIAN_FRONTEND=noninteractive \
#     && apt install -y --no-install-recommends curl git ca-certificates \
#     && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
#     && apt install -y --no-install-recommends nodejs \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

RUN apk update && apk upgrade \
    && apk add --no-cache bash git openssh

RUN git clone https://github.com/ZencashOfficial/secnodetracker
WORKDIR /secnodetracker
RUN git checkout v0.2.0-beta

RUN npm install

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

