FROM node:10-alpine

LABEL maintener wicowyn@gmail.com

ENV ZENCONF /nodetracker/zen.conf
ENV NODE_PORT 9033
ENV RPC_PORT 8233

RUN apk update && apk upgrade \
    && apk add --no-cache bash git openssh

RUN git clone https://github.com/ZencashOfficial/nodetracker
WORKDIR /nodetracker
RUN git checkout v0.4.0-rc1

RUN npm install

COPY entrypoint.sh /

VOLUME /nodetracker/config

CMD /entrypoint.sh
