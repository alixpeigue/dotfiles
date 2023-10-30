#powerline-daemon -q
#set fish_function_path $fish_function_path "/usr/share/powerline/fish/"
#powerline-setup

starship init fish | source

enable_transience

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
abbr --add gp git push
abbr --add gs git status

function mkcd
  mkdir $argv
  and cd $argv
end

# alias cat='bat'

set -Ux EDITOR helix
set -Ux QT_QPA_PLATFORMTHEME qt5ct
set -g fish_greeting
set -Ux XDG_CONFIG_HOME ~/.config

if status is-interactive
    # Commands to run in interactive sessions can go here


end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/apeigue/.ghcup/bin # ghcup-env