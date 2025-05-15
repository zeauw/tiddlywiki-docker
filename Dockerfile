FROM node:latest

RUN npm install -g tiddlywiki

RUN mkdir /wiki && \
    chown 1000:1000 /wiki

COPY start.sh /

CMD bash run.sh
