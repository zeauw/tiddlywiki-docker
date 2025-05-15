cd /
if [ -Z $(ls -A /wiki) ]; then
    tiddlywiki /wiki --init server
fi

tiddlywiki /wiki --listen host=0.0.0.0 username=$TIDDLYWIKI_USERNAME password=$TIDDLYWIKI_PASSWORD
