alias real='cat ~/.reality'

#vi
alias vi='vim'

#git
alias gst='git status -s -b'

#svn
alias sst='svn status'
alias sb='svn info'
slog(){svn log "$@"|( read; while true; do read h||break; read; m=""; while read l; do echo "$l" | grep -q '^[-]\+$'&&break; [ -z "$m" ] && m=$l; done; echo "$h % $m" | sed 's#\(.*\) | \(.*\) | \([-0-9 :]\{16\}\).* % \(.*\)#\1 \2 (\3) \4#'; done)}

#tmux
alias ta='tmux a'
alias tmux='tmux -u'

#php
alias phpdate='php -r "echo(date(\"Y-m-d H:i:s\"));echo(\"\n\");"'

case ${OSTYPE} in
    darwin*)
        alias updatedb='sudo /usr/libexec/locate.updatedb'
        alias down='cd $HOME/Downloads/'
        alias desk='cd $HOME/Desktop/'
        alias pict='cd $HOME/Pictures/'
        alias site='cd $HOME/Sites/'

        #file
        alias ll='ls -Gltr'
        alias la='ls -Gltra'
        ;;
    linux*)
        ;;
    cygwin*)
        #file
        alias ll='ls -ltr --color'
        alias la='ls -ltra --color'
        alias open='cygstart'

        alias mysql='mysql -h127.0.0.1'
        alias ta='screen'

        alias vi='vim'
        ;;
esac
