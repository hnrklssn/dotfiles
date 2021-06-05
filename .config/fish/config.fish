set -g -x fish_greeting ''

alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..
funcsave ...
funcsave ....
funcsave .....
funcsave ......

source ~/.aliases

if test -d /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

set -x PATH "$PATH:/opt/homebrew/opt/ccache/libexec:~/git/arcanist/bin/"

set -x EDITOR vim
set -x VISUAL vim
fish_vi_key_bindings

# Source Nix setup script
if test -e ~/.nix-profile/etc/profile.d/nix.sh
    fenv source ~/.nix-profile/etc/profile.d/nix.sh
end
