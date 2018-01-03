export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export NPM_TOKEN=$(echo -n `cat $HOME/.npmrc | grep _authToken | cut -d= -f2`)

export PATH=~/mongodb/bin:$PATH

export PATH=$PATH:/usr/local/sbin

#We need tab completion for git bash
test -f ~/.git-completion.bash && . $_

#We have colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1='\[\e[0;33m\]\h:\W \u\$\[\e[m\] '

#Handy dandy shortcuts
alias qw="clear; npm run test"
alias mongos="$HOME/mongodb/bin/mongod --dbpath $HOME/mongodb-data"
alias rabbits="rabbitmq-server"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
