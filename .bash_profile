# .bash_profile

#
# Get the aliases and functions
#
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#
# User specific environment and startup programs
#
# my global definitions
if [ -f ~/.bash_profile_global ]; then
	. ~/.bash_profile_global
fi

# my machine local definitions
if [ -f ~/.bash_profile_local ]; then
	. ~/.bash_profile_local
fi

