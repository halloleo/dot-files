export PS1="$ "

alias ll='ls -l'
alias lld='ls -ld'
alias lla='ls -la'
alias l1='ls -1'
alias l1d='ls -1d'
alias gri='grep -i'

alias findnewest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n -r  | head | cut -d " " -f 2-'
alias findoldest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n  | head | cut -d " " -f 2-'
alias findbiggest='gfind . -printf "%s %p\n" | sort -n  -r | head | cut -d " " -f 2-| while read i; do du -h "$i"; done'
alias listpath='echo $PATH|tr ":" "\n"'

shopt -s nocaseglob
shopt -s nullglob
