# bash start up file

. ~/.bash_global

# PYTHONPATH gets set in the platform profile files

if uname -s | grep -qi CYGWIN; then
    . ~/.bash_winwork
fi

if uname -s | grep -qi Darwin; then
    . ~/.bash_machome
fi
