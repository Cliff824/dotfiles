export PATH=$PATH:$HOME/.local/bin
test -s ~/.alias && . ~/.alias || true

export EDITOR=nvim
export VISUAL=nvim

alias ls="ls --color=auto"
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -iv'
alias mkdir='mkdir -p'
alias home='cd ~'
alias cd..='cd ..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

PS1='\W> '
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
pfetch 
