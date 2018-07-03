alias local-devenv="cd ~/Projects/local-devenv ; vagrant up ; vagrant ssh"
alias carezone-devenv="cd ~/Projects/carezone-devenv ; vagrant up ; vagrant ssh"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi

if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

source /usr/share/nvm/init-nvm.sh
eval "$(rbenv init -)"

neofetch
