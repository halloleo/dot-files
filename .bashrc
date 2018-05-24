# bash start up file

# machine wide definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# my global definitions
. ~/.bashrc_global

# my machine local definitions
if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi
