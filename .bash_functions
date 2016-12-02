#! /bin/bash

# show terminal color coding
show_cc()
{
    echo "no:global default;fi:normal file;di:directory;ln:symbolic link;pi:named pipe;so:socket;do:door;bd:block device;cd:character device;or:orphan symlink;mi:missing file;su:set uid;sg:set gid;tw:sticky other writable;ow:other writable;st:sticky;ex:executable;" | sed -e 's/:/="/g; s/\;/"\n/g';
    IFS=:;
    for i in $LS_COLORS; do
        echo -e "\e[${i#*=}m$( x=${i%=*}; [ "${!x}" ] && echo "${!x}" || echo "$x" )\e[m";
    done
}

# color code manual pages
man()
{
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}


# dir count in dir
dcount()
{
    ls -l $1 | grep --count ^d
}

# file count in dir
fcount()
{
    ls -l $1 | grep --count ^-
}

# link count in dir
lcount()
{
    ls -l $1 | grep --count ^l
}

# check out the first branch matching the given input string
git-cobr()
{
    branch=`git branch --all --list *$1* | head -n 1 | sed -e 's/remotes\/origin\///g'`
    git checkout $branch
}

