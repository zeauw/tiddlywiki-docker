if [ -Z $(ls -A /wiki) ]; then
    tiddlywiki /wiki --init server
fi

tiddlywiki /wiki --listen username=$TIDDLYWIKI_USERNAME password=$TIDDLYWIKI_PASSWORD
