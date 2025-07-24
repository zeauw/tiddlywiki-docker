#!/bin/bash

if [ ! -e /wiki/tiddlywiki.info ]; then
    tiddlywiki /wiki --init server
fi

if [[ -n "$TIDDLYWIKI_PASSWORD"  &&  -n "$TIDDLYWIKI_USERNAME" ]]; then
    exec tiddlywiki /wiki --listen host=0.0.0.0 username=$TIDDLYWIKI_USERNAME password=$TIDDLYWIKI_PASSWORD
else
    exec tiddlywiki /wiki --listen host=0.0.0.0
fi
