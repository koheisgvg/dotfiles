export LANG=ja_JP.UTF-8
export NLS_LANG=Japanese_Japan.AL32UTF8

fpath=(zsh/function ${fpath})
source $HOME/dotfiles/zsh/antigenrc
source $HOME/.zsh.d/alias.zsh
source $HOME/.zsh.d/local.zsh

# key-bind TODO plugin
bindkey '^U' backward-kill-line
# c-s無効化
stty stop undef
