#!/bin/bash
source ~/.virtualenvs/i3/bin/activate
wal -R -e
xrdb -load ~/.Xresources

nitrogen --restore

