#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2

# get list of connected screen
monitor="$(xrandr | grep " connected " | awk '{ print $1 }' | tr \\n ' ' | xargs)"

primary_monitor="$(echo ${monitor} | cut -d' ' -f1)"
secondary_monitor="$(echo ${monitor} | cut -d' ' -f2)"

PRIMARY="${primary_monitor}" polybar primary >>/tmp/polybar1.log 2>&1 &
#SECONDARY="${secondary_monitor}" polybar secondary >>/tmp/polybar2.log 2>&1 &
