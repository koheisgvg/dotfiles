# .bashrc
# User specific aliases and functions
if [ -d "${HOME}/.bash.d" ] ; then
    for f in "${HOME}"/.bash.d/*.bash ; do
        [ -x "$f" ] && . "$f" && echo load "$f"
    done
    unset f
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
