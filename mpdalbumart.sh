#!/bin/bash

main() {
music_dir="/Volumes/1024/Music"
current=$(dirname "$(mpc current -f '%file%')")

if [[ -f "${music_dir}/${current}/albumart.jpg" ]]; then
    if pgrep feh; then
        killall feh
    fi
    feh "${music_dir}/${current}/albumart.jpg" --geometry=479x479+67+242 -x -Z &
else
    :
fi
}

while true; do
    main > /dev/null
    mpc idle player > /dev/null
done
