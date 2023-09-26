#!/bin/fish

set a (printf "poweroff\nreboot\nlog out\nlock\nsuspend" | rofi -dmenu)

switch $a
    case lock
        swaylock -f
    case "log out"
        hyprctl dispatch exit
    case reboot
        systemctl reboot
    case poweroff
        systemctl poweroff
    case suspend
        systemctl suspend
end