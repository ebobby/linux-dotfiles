# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/fms/.oh-my-zsh"

ZSH_THEME="gianu"
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
  archlinux
  cargo
  colored-man-pages
  common-aliases
  git
  fzf
  nvm
  npm
  node
  ruby
  rbenv
  vagrant
  systemd
  tmux
  tmuxinator
)

source $ZSH/oh-my-zsh.sh
source ~/.environment.sh
