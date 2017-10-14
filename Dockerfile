FROM ubuntu:16.04

MAINTAINER wicowyn@gmail.com

RUN apt update \
    && DEBIAN_FRONTEND=noninteractive \
    && apt install -y --no-install-recommends curl git ca-certificates \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt install -y --no-install-recommends nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/ZencashOfficial/secnodetracker

WORKDIR /secnodetracker
RUN npm install

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

