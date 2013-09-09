# .bashrc
# User specific aliases and functions
if [ -d "${HOME}/.bash.d" ] ; then
    for f in "${HOME}"/.bash.d/*.bash ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# for screen trigger key set Q
stty -ixon
# c-s無効化
stty stop undef

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
