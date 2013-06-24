export PATH=/usr/local/sbin/:/usr/local/bin:$PATH
export EDITOR=/usr/bin/vim

#for phpenv
export PATH="$HOME/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

bindkey -e               # キーバインドをemacsモードに設定
#bindkey -v              # キーバインドをviモードに設定

ZSHHOME="${HOME}/.zsh.d"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# if mac
#
# if centOS
#
# if mac
#
# if windows
