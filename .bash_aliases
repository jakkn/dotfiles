#! /bin/bash

# dirs
alias dirs='dirs -v'
alias d='dirs'

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

# tree
alias tre='tree --prune -lP'

# 'cat' with syntax highlighting.
# to colorize other output, use grcat. Ex: grcat ping some.random.address
#alias ccat='pygmentize -g'
alias ccat='highlight -O ansi'

# search open ssh hosts on network
# example use: mapssh 10.0.0.0/24
alias mapssh='nmap -p22 --open -PN -sV -oG ssh_hosts'

# invert display colors
alias invert='xcalib -invert -alter'
