#	 Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#export LC_ALL=zh_CN.UTF-8
#export LANG=zn_CN.UTF-8

alias vim="mvim -v"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="jnrowe"
ZSH_THEME="muse"
#ZSH_THEME="kennethreitz"

# Example aliases
alias zshconfig="mvim -v ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mvn autojump common-aliase virtualenvwrapper ruby marked2 emacs last-working-dir jump z)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export PATH=$PATH:/usr/local/mysql/bin

source ~/scripts/todo.txt_cli-2.9/todo_completion
#export TODOTXT_DEFAULT_ACTION=ls
alias t='~/scripts/todo.txt_cli-2.9/todo.sh -d ~/scripts/todo.txt_cli-2.9/todo.cfg'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

hash -d e="/Users/sting/workspace/unimedsci/edc/edc"
hash -d h="/Users/sting/workspace/hepatox/hepatox"
hash -d w="/Users/sting/workspace"

#export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH=$PATH:/Users/sting/bin
export PYTHONDONTWRITEBYTECODE=True
#export PATH=$PATH:/Users/sting/applications/activator-1.2.10
#export PATH=$PATH:/Users/sting/applications/grails-2.4.3/bin
#export PATH=$PATH:/Users/sting/applications/play-2.1.0
#export PATH=$PATH:/Users/sting/applications/scala-2.11.1/bin

alias ack='ack --ignore-dir=target'
#alias chrome='"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"'
#alias firefox = '"/Applications/Firefox.app/Contents/MacOS/firefox"'
alias ip='ifconfig | grep 192'
#alias Emacs="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c"
alias startmysql='sudo /usr/local/mysql/support-files/mysql.server start'
alias stopmysql='sudo /usr/local/mysql/support-files/mysql.server stop'
alias m='python manage.py'
#alias ag='ag --ignore-dir=target'
#alias vim='emacsclient -c'
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

#export WORKON_HOME=/Users/sting/Virtualenvs
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

export LC_ALL=zh_CN.UTF-8
export LANG=zh_CN.UTF-8

export NODE_PATH=/usr/local/lib/node_modules

. ~/bin/z.sh
