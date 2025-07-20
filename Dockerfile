FROM node:current-alpine

RUN apk --no-cache add bash

RUN npm install -g tiddlywiki

COPY ./run.sh /

RUN mkdir /wiki && \
    chown node:node /wiki

USER node

CMD ["bash", "/run.sh" ]
