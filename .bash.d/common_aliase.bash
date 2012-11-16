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

#tmux
alias ta='tmux attach'
alias tmux='tmux -u'

#php
alias phpdate='php -r "echo(date(\"Y-m-d h:i:s\"));echo(\"\n\");"'

#hg
alias hst='hg status'
alias hlog='hg slog |head -40'

#git
alias gst='git status'

# bash_completion
BASH_COMPLETION=/usr/local/etc/bash_completion
BASH_COMPLETION_DIR=/usr/local/etc/bash_completion.d
BASH_COMPLETION_COMPAT_DIR=/usr/local/etc/bash_completion.d
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi
