# rustup
export PATH="$PATH:$HOME/.cargo/bin/:$HOME/.bin/"

# rbenv
eval "$(rbenv init -)"

# nvm
source /usr/share/nvm/init-nvm.sh

# fzf
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# Better CLI
alias ls="exa"
alias bat="bat --color always"
alias dirsize="ncdu --color dark -rr -x "
alias extra-packages='pacman -Qe | awk '\''{ print $1 }'\'' > ~/.current-packages.txt ; colordiff ~/.current-packages.txt ~/.base-packages.txt'
alias glances="glances --disable-bg"
alias update-all="aurman -Syu ; upgrade_oh_my_zsh ; rustup update ; npm -g upgrade ; gem update ; gem clean"

unalias cp
unalias mv
unalias rm

# Development aliases
alias devenv="cd ~/Projects/personal/devenv/ ; vagrant up ; xset r rate 250 50 ; vagrant ssh ;"
alias homeroom="cd ~/Projects/homeroom/devenv/ ; vagrant up ; xset r rate 250 50 ; vagrant ssh ;"

# Directory jumping
. /usr/share/z/z.sh

# Variables
export EDITOR="emacsclient --no-wait"

# Aliases
alias txk='tmuxinator stop'

neofetch
