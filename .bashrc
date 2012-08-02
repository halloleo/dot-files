export PS1="$ "
export LC_ALL=C
export http_proxy=http://broleo:pw-here@192.168.80.81:3129

alias ll='ls -l'
alias lld='ls -ld'
alias lla='ls -la'

alias findnewest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n -r  | head | cut -d " " -f 2-'
alias findoldest='gfind . -printf "%T@ %Td-%Tm-%TY %TH:%TM %p\n" | sort -n  | head | cut -d " " -f 2-'
alias findbiggest='gfind . -printf "%s %p\n" | sort -n  -r | head | cut -d " " -f 2-| while read i; do du -h "$i"; done'

alias listpath='echo $PATH|tr ":" "\n"'

alias wget='wget --proxy-user=broleo --proxy-password=pw-here'

alias python="python -i"

shopt -s nocaseglob
shopt -s nullglob
