alias home-wifi="sudo netctl start home-wifi ; sudo netctl wait-online home-wifi"
alias local-devenv="cd ~/Projects/Personal/local-devenv/ ; vagrant up ; vagrant ssh"

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi

if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

source /usr/share/nvm/init-nvm.sh
eval "$(rbenv init -)"

neofetch
