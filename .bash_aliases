#! /bin/bash

# dirs
alias dirs='dirs -v'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'

    # grep
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# less
alias less='less -N'

# screen/tmux
alias sls='screen -ls'
alias tls='tmux ls'

# disk usage
alias du='du -h'
alias dud='du -had1'
alias df='df -h'

# pushd and popd
alias +='pushd'
alias _='popd'

