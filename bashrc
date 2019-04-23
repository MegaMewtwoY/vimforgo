# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# 加上对原 bashrc 的引用
if [ -f ~/.bashrc_bak ]; then
  . ~/.bashrc_bak
fi

# User specific aliases and functions
alias vim="~/install/vimforgo/bin/nvim"
export GOROOT=/usr/lib/golang
export GOPATH=~/go:$GOROOT
export GOBIN=~/go/bin:$GOROOT/bin
# export GOPROXY=https://athens.azurefd.net/
export PATH=$PATH:$GOBIN:$GOROOT/bin
export GIT_EDITOR='~/install/vimforgo/bin/nvim'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
