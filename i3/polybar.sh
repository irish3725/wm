#!/bin/bash

# terminate already running bar instances
killall -q polybar

# wait until processes are shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar top &
