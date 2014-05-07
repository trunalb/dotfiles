# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="kennethreitz"
export ZSH_THEME="miloshadzic"
#export ZSH_THEME="sunrise"
#export ZSH_THEME="kphoen"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx brew pip git textmate autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
export PATH=$HOME/packages/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/Cellar/ruby/1.9.2-p290/bin
export PATH=$PATH:/Users/trunalb/.rvm/gems/ruby-1.9.3-p125/bin

# JAVA
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export JAVA_HOME

# MYSQL
PATH=${PATH}:/usr/local/mysql/bin
export PATH

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache

export EDITOR='vim'

#trunal
webdriver_chrome_driver=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#git aliases
alias gup='git stash;git pull --rebase;git stash pop;'
alias tlog='tail -f /private/var/log/apache2/error_log'
alias ws='cd ~/Documents/workspace'
alias dev='cd ~/Documents/workspace/localnut-ember'
alias simulators='cd /Users/trunal/Library/Application\ Support/iPhone\ Simulator'
alias vi='vim'
alias vim='mvim'
alias xmpp='cd /Applications/XAMPP/'
alias gextensions='cd /Users/trunal/Library/Application\ Support/Google/Chrome/Default/Extensions/'
alias nginx_conf='cd /usr/local/etc/nginx'
alias ts='tig status'

#shell functions
txa (){
  tmux a -t $1
}

export PATH=~/bin/:$PATH

#SCM Breeze settings
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
