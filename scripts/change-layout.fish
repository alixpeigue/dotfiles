#!/bin/fish

if test "$(hyprctl -j getoption general:layout | jq -r '.str')" = "master"
    hyprctl keyword general:layout "dwindle"
else
    hyprctl keyword general:layout "master"
end