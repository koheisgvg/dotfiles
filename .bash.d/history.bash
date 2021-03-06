#historyの重複禁止
export HISTCONTROL=ignoredups
#historyに日時記入
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '
#historyの記録量を設定
export HISTSIZE=100000

function share_history {  # 以下の内容を関数として定義
	history -a  # .bash_historyに前回コマンドを1行追記
	history -c  # 端末ローカルの履歴を一旦消去
	history -r  # .bash_historyから履歴を読み込み直す
}
PROMPT_COMMAND='share_history'  # 上記関数をプロンプト毎に自動実施
shopt -u histappend   # .bash_history追記モードは不要なのでOFFに
