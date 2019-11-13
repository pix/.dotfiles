#!/bin/bash

if [ -n "$1" ]; then
    num="${1}/"
else
    num=""
fi


curl https://xkcd.com/${num}info.0.json > /tmp/.xkcd.json 2>/dev/null
ALT=$(jq -r .alt < /tmp/.xkcd.json 2>/dev/null)
URL=$(jq -r .img < /tmp/.xkcd.json 2>/dev/null)

wget -qO /tmp/.xkcd.png "$URL"

if identify /tmp/.xkcd.png >/dev/null 2>/dev/null; then
    mv /tmp/.xkcd.png ~/.lock.overlay.png
    echo "$ALT" > ~/.lock.text
fi
