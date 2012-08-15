export PS1="$ "

if uname -s | grep -qi CYGWIN; then
    . ~/.bashrc_winacc
fi

if uname -s | grep -qi Darwin; then
    . ~/.bashrc_machome
fi

alias ll='ls -lh'
alias lld='ls -lhd'
alias lla='ls -lha'
alias l1='ls -1'
alias l1d='ls -1d'

alias g=git

alias gri='grep -i'

alias pd='pushd .'
alias po='popd' 

alias findnewest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n -r  | head | cut -d " " -f 2-'
alias findoldest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n  | head | cut -d " " -f 2-'
alias findbiggest='gfind . -printf "%s %p\n" | sort -n  -r | head | cut -d " " -f 2-| while read i; do du -h "$i"; done'
alias listpath='echo $PATH|tr ":" "\n"'

shopt -s nocaseglob
shopt -s nullglob

