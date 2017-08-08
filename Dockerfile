FROM node:6.11-alpine

ENV GETH_HOSTNAME "localhost"
ENV GETH_RPCPORT 8545

ADD start.sh /start.sh

RUN apk add --update git && \
    npm install -g bower && \
    git clone https://github.com/provivus/explorer /app
WORKDIR /app

RUN npm install && \
    bower --allow-root install

EXPOSE 8000

CMD ["/bin/sh", "/start.sh"]
