#powerline-daemon -q
#set fish_function_path $fish_function_path "/usr/share/powerline/fish/"
#powerline-setup

#starship init fish | source

#enable_transience

#!/bin/bash

# Key bindings

#bind \cq 'lfcd'
bind \cq 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'
alias vpninsa='sudo openconnect --user=apeigue@insa-lyon.fr --authgroup INSA --server sslvpn.cisr.fr'
alias IF='cd ~/Documents/INSA/3IF'
alias hx='helix'

abbr --add gc git clone
abbr --add gco git checkout
abbr --add gca git commit -am
abbr --add ga git add



# alias cat='bat'

set -Ux EDITOR helix
set -Ux QT_QPA_PLATFORMTHEME qt5ct
set -g fish_greeting
set -Ux XDG_CONFIG_HOME ~/.config

if status is-interactive
    # Commands to run in interactive sessions can go here


end
