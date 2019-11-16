#!/bin/bash
source ~/.virtualenvs/i3/bin/activate
wal -R -e -n
xrdb -load ~/.Xresources

nitrogen --restore

