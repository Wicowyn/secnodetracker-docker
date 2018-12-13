FROM node:8-alpine

LABEL maintener wicowyn@gmail.com

ENV ZENCONF /nodetracker/zen.conf
ENV PORT 8233

RUN apk update && apk upgrade \
    && apk add --no-cache bash git openssh

RUN git clone https://github.com/ZencashOfficial/nodetracker
WORKDIR /nodetracker
RUN git checkout v0.3.1-beta

RUN npm install

COPY entrypoint.sh /

VOLUME /nodetracker/config

CMD /entrypoint.sh
