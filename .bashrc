# bash start up file

export PS1="$ "
export LESSHISTFILE="-"
export HISTFILESIZE=50000
export HISTSIZE=50000

alias ll='ls -lh'
alias lld='ls -lhd'
alias lla='ls -lha'
alias l1='ls -1'
alias l1d='ls -1d'

alias g=git
alias gri='grep -i'

alias d='diff --exclude=".DS_Store"'
alias dqr='diff -qr --exclude=".DS_Store"'

alias pu='pushd .'
alias po='popd' 

alias findnewest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n -r  | head | cut -d " " -f 2-'
alias findoldest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n  | head | cut -d " " -f 2-'
alias findbiggest='gfind . -printf "%s %p\n" | sort -n  -r | head | cut -d " " -f 2-| while read i; do du -h "$i"; done'
alias listpath='echo $PATH|tr ":" "\n"'
alias listalias="alias|sed 's/=.*$//g'"

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'
alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'

shopt -s nocaseglob
shopt -s nullglob
shopt -s histappend

# PYTHONPATH gets set in the platform profile files

if uname -s | grep -qi CYGWIN; then
    . ~/.bash_winwork
fi

if uname -s | grep -qi Darwin; then
    . ~/.bash_machome
fi
