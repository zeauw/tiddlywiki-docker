FROM node:latest

RUN npm install -g tiddlywiki

RUN mkdir /wiki

COPY start.sh /

CMD bash run.sh
