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
eval (/opt/homebrew/bin/brew shellenv)

set -x PATH "$PATH:/opt/homebrew/opt/ccache/libexec:~/git/arcanist/bin/"

set -x EDITOR vim
set -x VISUAL vim

# Source Nix setup script
fenv source ~/.nix-profile/etc/profile.d/nix.sh
