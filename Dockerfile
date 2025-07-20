FROM node:current-alpine

RUN apk --no-cache add bash

RUN mkdir /wiki && \
    chown node:node /wiki

USER node

RUN npm install -g tiddlywiki

COPY ./run.sh /

CMD ["bash", "/run.sh" ]
