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
    alias lh='ls -ad .*'

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

# ssh aliases
alias ssh='TERM=xterm ssh'
alias ssh-keyprint='ssh-keygen -E md5 -lf'

# dtach dvtm sessions
#alias irssisession='dtach -c /tmp/irssi-session -r winch dvtm'
#alias defaultsession='dtach -c /tmp/default-session -r winch dvtm'

# docker aliases
alias dps='docker ps -a'
alias dim='docker images'

# get current public ip
alias myip="curl icanhazip.com"

# print all pdfs in folder
alias printallpdf="for f in *.pdf; do lpr $f; done"

# git aliases
alias git-prune-br="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"
alias gst="git st"
alias gls="git ls"
alias gls10="gls -10"
alias gls20="gls -20"

