#!/bin/bash
# change.sh

read -r a

echo "$a"

if [ "$a" == "duplicate" ]; then
  hyprctl keyword monitor eDP-1,preferred,0x0,1
  hyprctl keyword monitor HDMI-A-1,preferred,auto,1,mirror,eDP-1
elif [ "$a" == "extend left" ]; then
  hyprctl keyword monitor eDP-1,preferred,1920x0,1
  hyprctl keyword monitor HDMI-A-1,preferred,0x0,1
elif [ "$a" == "extend right" ]; then
  hyprctl keyword monitor eDP-1,preferred,0x0,1
  hyprctl keyword monitor HDMI-A-1,preferred,1920x0,1
elif [ "$a" == "only main" ]; then
  hyptctl keyword monitor eDP-1,preferred,0x0,1
  hyprctl keyword monitor HDMI-A-1,disable
elif [ "$a" == "only external" ]; then
  hyprctl keyword monitor HDMI-A-1,preferred,0x0,1
  hyprctl keyword monitor eDP-1,disable
fi

killall hyprpaper
hyprctl dispatch exec hyprpaper
  
  

