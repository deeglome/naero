#!/bin/bash
if [ "$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')" = "yes" ]; then
  volnoti-show -m
else
  volnoti-show "$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -1)"
fi
