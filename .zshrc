# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
# ZSH_THEME="blinks"

zstyle ':completion:*' use-cache yes

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

alias a="atom"
#alias .="pwd"
alias db="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias pr="cd ~/Projects"
alias p="pr"

alias cl="clear"
# alias c="cl"
alias s="subl ."
alias mate="subl"
#alias phpcs="php-cs-fixer"
alias cw="compass watch"
alias ngcu="noglob composer update"
alias ngcub="noglob composer update bitnoise/*"
alias bpu="nocorrect sh $HOME/Projects/packages/update.sh"
alias pub="nocorrect sh $HOME/Projects/packages/update.sh"

#git
alias gs="git status"
alias gcu="git commit --amend"
#alias ga="git add"
#alias gc="git commit"
#alias gb="git branch"
#alias gp="git pull"
#alias gps="git push"
#alias gpu="git push"
alias sourcetree="open -a SourceTree"

# apache
alias astart="sudo apachectl start"
alias astop="sudo apachectl stop"
alias arestart="sudo apachectl restart"

# symfony
alias sfcache="sudo rm -rf app/cache/* && sudo rm -rf app/logs/* && sudo chmod +a '_www allow delete,write,append,file_inherit,directory_inherit' app/cache app/logs && sudo chmod +a '`whoami` allow delete,write,append,file_inherit,directory_inherit' app/cache app/logs"
alias sfdsu="sf doctrine:schema:update"
alias sfdsuf="sfdsu --force"
alias sfdsud="sfdsu --dump-sql"

#alias phpcs="php-cs-fixer"
alias fix="php-cs-fixer fix src/"
alias fixme="php-cs-fixer fix ."
alias hint="grunt hint"
alias sismo="php ~/Projects/sismo.php"
alias build="sismo build --force"
alias t="phpunit"
alias tc="phpunit --coverage-html=cov"
alias gt="grunt test"
alias vgs="sh vgs.sh | grep -v ##"
alias vgsb="sh vgs.sh"
alias m="memcached -d -m 24 -p 11211"

# open
alias o="open"
alias oo="open ."

# grep
alias grep="grep --color"
#alias gr="grep -r"
alias grphp='grepr --include="*.php"'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

export PATH=~/bin:$PATH
export PATH=$PATH:~/.composer/vendor/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/php5/bin:$PATH
export PATH=$PATH:/usr/local/sbin

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew capistrano sublime symfony2 bower composer cp history osx extract grunt wd bd)
#  gem battery

source $ZSH/oh-my-zsh.sh

alias rm="rm -i"
alias cp="nocorrect cp -iv"
alias mv="nocorrect mv -iv"

alias st="sourcetree ."
alias sst="st . && subl ."
alias deploy="cap deploy"
alias md5sum="md5 -r"

#export SISMO_DATA_PATH=$HOME/Projects/.sismo/data/
#export SISMO_CONFIG_PATH=$HOME/Projects/.sismo/config.php
#export SISMO_STORAGE_PATH=$HOME/Projects/.sismo/storage.php

export APP_ENV=dev

export SYMFONY__DATABASE__USER=root
export SYMFONY__DATABASE__PASSWORD=root
export SYMFONY__DATABASE__HOST=localhost

export SYMFONY__DATABASE_USER=root
export SYMFONY__DATABASE_PASSWORD=root
export SYMFONY__DATABASE_HOST=localhost

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# added by travis gem
[ -f /Users/adam187/.travis/travis.sh ] && source /Users/adam187/.travis/travis.sh
