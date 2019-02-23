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
plugins=(osx brew git autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
export PATH=$HOME/packages/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=~/bin/:$PATH


zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache

export EDITOR='vim'


#kubernetis kubectl editor
export KUBE_EDITOR='vi'

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

#git aliases
alias vi='vim'
alias vim='mvim'
alias ts='tig status'
alias sls='screen -ls'

#shell functions
txa (){
  tmux a -t $1
}

find_process_on_port () {
  lsof -i:$1 | awk '{print $2}' | tail -1
}

attach_screen () {
  screen -r $1
}

kill_screen () {
  screen -X -S $1 kill
}

curl_perf () {
  curl -H 'Cache-Control: no-cache' -o /dev/null -s -w "%{time_connect} + %{time_starttransfer} = %{time_total}\n" "$1"
}

# things specific to confluent
if [ -f '/Users/trunalbhanse/.zshrc.confluent' ]; then . '/Users/trunalbhanse/.zshrc.confluent'; fi
