#!/bin/bash

setbg() {
    source ~/.virtualenvs/i3/bin/activate
    wal -e -i "$@"
    source ~/.cache/wal/colors.sh
    sed "s/file=.*/file=$(echo $wallpaper | sed -e 's/[\/&]/\\&/g')/g" -i ~/.config/nitrogen/bg-saved.cfg
    # nitrogen --restore
    wal -i "$@" >/dev/null 2>&1
}

if [ -z "${1}" ]; then
    setbg "$(grep file= < ~/.config/nitrogen/bg-saved.cfg|head -n1|cut -d= -f2)"
elif [ "${1}" == "--old" ]; then
    old="$(grep file= < ~/.config/nitrogen/bg-saved.cfg|head -n1|cut -d= -f2)"
    shift 1
    setbg "$old" "$@"
else
    setbg "$@"
fi
