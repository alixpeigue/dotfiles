#powerline-daemon -q
#set fish_function_path $fish_function_path "/usr/share/powerline/fish/"
#powerline-setup

starship init fish | source

enable_transience

#!/bin/bash

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

bind ! bind_bang

# Key bindings

#bind \cq 'lfcd'
bind \cq 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'
alias vpninsa='sudo openconnect --user=apeigue@insa-lyon.fr --authgroup INSA --server sslvpn.cisr.fr'
alias IF='cd ~/Documents/INSA/3IF'
alias hx='helix'
alias "ordre-de-gros-lardon"="sudo !!"

abbr --add gc git clone
abbr --add gco git checkout
abbr --add gca git commit -am
abbr --add ga git add
abbr --add gaa git add -A
abbr --add gp git push
abbr --add gs git status
abbr --add gsc git switch -c

function mkcd
  mkdir $argv
  and cd $argv
end

# alias cat='bat'

set -Ux EDITOR helix
set -Ux OPENER xdg-open
set -Ux IMAGE_VIEWER gwenview
set -Ux QT_QPA_PLATFORMTHEME qt5ct
set -g fish_greeting
set -Ux XDG_CONFIG_HOME ~/.config



# config.fish
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end



if status is-interactive
    # Commands to run in interactive sessions can go here
    # eval (keychain --eval --quiet id_ed25519)
    # if [ -z "$ZELLIJ" ]
    #     zellij
    # end


end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/apeigue/.ghcup/bin # ghcup-env
