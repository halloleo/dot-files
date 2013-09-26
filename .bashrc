# bash start up file

# machine wide definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# my global definitions
. ~/.bash_global

# my machine local definitions
if [ -f ~/.bash_local ]; then
	. ~/.bash_local
fi
