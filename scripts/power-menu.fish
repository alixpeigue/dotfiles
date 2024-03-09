#!/bin/fish

set a (printf "poweroff\nreboot\nlog out\nlock\nsuspend" | rofi -dmenu)

switch $a
    case lock
        loginctl lock-session
    case "log out"
        hyprctl dispatch exit
    case reboot
        systemctl reboot
    case poweroff
        systemctl poweroff
    case suspend
        systemctl suspend
end
