alias real='cat ~/.reality'

#git
alias gst='git status -s -b'

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
