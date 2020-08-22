#!/usr/bin/env bash

wallpapers_dir="${HOME}/Pictures"
duration=$((60))

IFS=$(echo -en "\n\b")

if [ -d "$wallpapers_dir" ] ; then
    while :
    do
        bgr="$(find "${wallpapers_dir}" | shuf -n 1)"
        feh --bg-fill "${bgr}"
        sleep $duration
    done
fi

