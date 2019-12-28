#!/bin/bash

# terminate existing polybars and wait till all have been ended
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
polybar bottom >>/tmp/polybarBottom.log 2>&1

echo "Bars launched..."


