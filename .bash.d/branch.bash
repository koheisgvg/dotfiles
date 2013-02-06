hg_branch() {
	hg branch 2> /dev/null | awk '{print " (hg:"$1""}'
}
hg_rev() {
	hg parents --template "r{rev}\n" 2> /dev/null | awk '{print " "$1")"}'
}

git_branch() {
	git branch 2>/dev/null | awk '/^\*/ {print " " " (git:" $2 ")"}'
}

export PS1="\[\033[0;36m\]\u@\h:\W\$(git_branch)\$(hg_branch)\$(hg_rev) \$ \[\033[0m\]"

