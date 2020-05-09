# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="kennethreitz"
#export ZSH_THEME="miloshadzic"
#export ZSH_THEME="pygmalion"
export ZSH_THEME="mortalscumbag"
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
#plugins=(osx brew git autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
export PATH=$HOME/packages/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/bin/google-cloud-sdk/bin/:$PATH

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.oh-my-zsh/cache

#kubernetis kubectl editor
export KUBE_EDITOR='vi'

# things specific to confluent
if [ -f "${HOME}/.zshrc.confluent" ]; then . "${HOME}/.zshrc.confluent"; fi
if [ -f "${HOME}/.zshrc.after" ]; then . "${HOME}/.zshrc.after"; fi

[ -s "/Users/trunalbhanse/.scm_breeze/scm_breeze.sh" ] && source "/Users/trunalbhanse/.scm_breeze/scm_breeze.sh"
