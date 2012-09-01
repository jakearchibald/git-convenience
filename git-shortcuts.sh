alias gs='git status'
alias gaa='git add -A'
alias gp='git pull && git push'
alias gdiff='git diff --color-words'
alias gclean='git gc --prune=now && git remote prune origin'
alias glog='git log --graph --oneline --all --decorate'

function gc {
	git commit -am "$1"
	gs
}

function goops {
	git commit -a --amend
	gs
}