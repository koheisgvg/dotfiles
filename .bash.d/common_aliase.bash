## windows cygwin .bashrc
if [ "$OS" = "Windows_NT" ]; then
	#directory shortcut
	alias desk='cd /cygdrive/c/Users/k_sugi/Desktop'
	alias down='cd /cygdrive/c/Users/k_sugi/Downloads'
	alias re='cd /cygdrive/c/pleiades/xampp/htdocs/rehouse'
	alias cs='cd /cygdrive/c/xampp/htdocs/cs/'
	alias xamp='cd /cygdrive/c/xampp/'
	alias vi='vim'
	#file
	alias ll='ls -ltr --color'
	alias la='ls -ltra --color'
	alias open='cygstart'
else
	#vim73
	alias vi='/usr/local/bin/vim'
	#file
	alias rm='rm -i'
	alias cp='cp -i'
	alias mv='mv -i'
	alias ll='ls -ltr'
	alias la='ls -ltra'
	#directory shortcut
	alias html='cd /var/www/html/'
	alias cs='cd /var/www/html/cs-research/'
fi

alias real='cat ~/.reality'

#grep
alias grep='grep --color'

#tmux
alias ta='tmux attach'
alias tmux='tmux -u'
alias tmuxnew='tmux new -s'

#php
alias phpdate='php -r "echo(date(\"Y-m-d H:i:s\"));echo(\"\n\");"'

#hg
alias hst='hg status'
alias hlog='hg slog |head -40'

#git
alias gst='git status -s -b'

#less
vim_version=`vim --version | head -1 | sed 's/^.*\ \([0-9]\)\.\([0-9]\)\ .*$/\1\2/'`
alias less='/usr/share/vim/vim${vim_version}/macros/less.sh'

#coding
alias tl='grep -R "TODO" *'
alias tla='grep -ER "TODO|todo" *'

# bash_completion
BASH_COMPLETION=/usr/local/etc/bash_completion
BASH_COMPLETION_DIR=/usr/local/etc/bash_completion.d
BASH_COMPLETION_COMPAT_DIR=/usr/local/etc/bash_completion.d
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

