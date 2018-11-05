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
alias extra-packages='pacman -Qe | awk '\''{ print $1 }'\'' > ~/.current-packages.txt ; diff ~/.current-packages.txt ~/.base-packages.txt'
alias glances="glances --disable-bg"

unalias cp
unalias mv
unalias rm

# Development aliases
alias local-devenv="cd ~/Projects/local-devenv ; vagrant up ; vagrant ssh"
alias carezone-devenv="cd ~/Projects/carezone-devenv ; vagrant up ; xset r rate 250 50; vagrant ssh"
alias carezone-tunnel="sshuttle --dns --remote francisco_carezone_com@jumpbox.czops.net --exclude 192.168.1.0/24 --exclude 192.168.64.0/24 --exclude 10.0.3.0/24 10.0.0.0/8 192.168.0.0/16 172.16.64.0/24 172.16.69.0/24 172.16.70.0/24 172.16.71.0/24 35.197.2.175/32 35.201.81.203/32 107.178.247.135/32"

# Android
#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools

neofetch
