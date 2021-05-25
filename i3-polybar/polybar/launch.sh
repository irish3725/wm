#!/bin/bash

# terminate existing polybars and wait till all have been ended
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -q --reload bottom &
  done
else
  polybar -q bottom >>/tmp/polybarBottom.log 2>&1
fi

echo "Bars launched..."


