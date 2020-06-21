# rustup (Rust)
export PATH="$PATH:$HOME/.cargo/bin/:$HOME/.bin/"
# rbenv (Ruby)
eval "$(rbenv init -)"
# pyenv (Python)
eval "$(pyenv init -)"
# nvm (Node)
source /usr/share/nvm/init-nvm.sh

# fzf
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# Directory jumping
. /usr/share/z/z.sh

# Better CLI
alias ls="exa"
alias bat="bat --color always"
alias dirsize="ncdu --color dark -rr -x "
alias extra-packages='pacman -Qe | awk '\''{ print $1 }'\'' > ~/.current-packages.txt ; colordiff ~/.current-packages.txt ~/.base-packages.txt'
alias update-all="aurman -Syu ; pacrmorphans ; upgrade_oh_my_zsh ; rustup update ; npm -g upgrade ; gem update ; gem clean"

unalias cp
unalias mv
unalias rm

# Aliases
alias txk='tmuxinator stop'

neofetch
