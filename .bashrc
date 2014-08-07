# bash start up file

# machine wide definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# my global definitions
. ~/.bash_global

# my machine local definitions
unamestr=`uname`
case $unamestr in
    *CYGWIN*) . ~/.bash_winwork;;
    *Darwin*) . ~/.bash_machome;;
    *) echo "warning: no machine-specific '.bash_...' file for uname '$unamestr'";;
esac
