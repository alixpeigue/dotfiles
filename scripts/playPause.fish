#!/bin/fish

# if test "$(pgrep spotify)"
#     playerctl --player=spotify play-pause
# else
#     playerctl play-pause
# end

set paused false

for source in (playerctl -l)
    if test (playerctl --player=$source status) = "Playing"
        echo $source >> /tmp/playPauseListTmp
        playerctl --player=$source pause
        set paused true
    end
end

if $paused
    mv /tmp/playPauseListTmp /tmp/playPauseList
end

if not $paused
    for source in (cat /tmp/playPauseList)
        playerctl --player=$source play
    end
    echo "" > /tmp/playPauseList
end

