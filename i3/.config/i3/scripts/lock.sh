#!/bin/bash

notify-send DUNST_COMMAND_PAUSE
rm -f ~/.bg.png ~/.lock.png
scrot ~/.bg.png

if [ -f ~/.lock.text ]; then
    # -font Liberation-Sans -pointsize 26 -fill white -gravity center  -annotate +0+160 "Type Password to Unlock" \
    convert ~/.bg.png \
        -filter Gaussian -resize 50% -define filter:sigma=2.5 -resize 200% \
        -font Liberation-Sans -pointsize 16 -strokewidth 4 -blur 10 -fill black -gravity SouthEast -annotate +15+15 "$(cat ~/.lock.text)" \
        -font Liberation-Sans -pointsize 16 -strokewidth 4 -blur 10 -fill black -gravity SouthEast -annotate +15+15 "$(cat ~/.lock.text)" \
        -font Liberation-Sans -pointsize 16 -strokewidth 4 -blur 10 -fill black -gravity SouthEast -annotate +15+15 "$(cat ~/.lock.text)" \
        -font Liberation-Sans -pointsize 16 -blur 0 -fill white -gravity SouthEast -annotate +15+15 "$(cat ~/.lock.text)" \
        ~/.lock.tmp.png
    
else
    convert ~/.bg.png \
        -filter Gaussian -resize 50% -define filter:sigma=2.5 -resize 200% \
        ~/.lock.tmp.png
fi

if [ -f ~/.lock.overlay.png ]; then
    composite -compose atop -gravity SouthEast -geometry +15+45 \
        -dissolve 45%  \
        ~/.lock.overlay.png \
        ~/.lock.tmp.png \
        ~/.lock.png

    rm ~/.lock.tmp.png
else
    mv ~/.lock.tmp.png ~/.lock.png
fi

i3lock -i ~/.lock.png
# eog ~/.lock.png
notify-send DUNST_COMMAND_RESUME

