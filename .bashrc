# bash start up file

# machine wide definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# my global definitions
. ~/.bash_global

# my machine local definitions
unamestr=`uname`
case $unamestr in
    *CYGWIN*) . ~/.bash_winwork;;
    *Darwin*) . ~/.bash_machome;;
    *) echo "warning: no machine-specific '.bash_...' file for uname '$unamestr'";;
esac
