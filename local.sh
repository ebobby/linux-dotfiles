alias local-devenv="cd ~/Projects/local-devenv ; vagrant up ; vagrant ssh"
alias carezone-devenv="cd ~/Projects/carezone-devenv ; vagrant up ; vagrant ssh"
alias nvidia-settings="optirun -b none nvidia-settings -c :8 "

alias profile-performance="sudo system76-power profile performance"
alias profile-balanced="sudo system76-power profile balanced"
alias profile-battery="sudo system76-power profile battery"

alias nvidia-on="sudo system76-power graphics power on ; sudo modprobe nvidia-drm nvidia-modeset nvidia"
alias nvidia-off="sudo rmmod nvidia-drm nvidia-modeset nvidia ; sudo system76-power graphics power off"

source /usr/share/nvm/init-nvm.sh
eval "$(rbenv init -)"

unalias cp
unalias mv

neofetch
