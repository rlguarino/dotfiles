# Customize to your needs...
ZSH_THEME="gentoo"
unsetopt correct_all

alias tmux="tmux -2"

export WORKON_HOME=$HOME/.virtualenvs
export MSYS_HOME=/c/msys/1.0
source /usr/local/bin/virtualenvwrapper.sh

#Set go development variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/source/go

export EDITOR=vim
export VISUAL=vim
export TERM=xterm-256color

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/sbin/:/usr/local/go/bin:$HOME/source/go/bin:$PATH
#### END OF FILE
