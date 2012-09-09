alias gs='git status'
alias gaa='git add -A'
alias gdiff='git diff --color-words'
alias gclean='git gc --prune=now && git remote prune origin'
alias glog='git log --graph --oneline --all --decorate'

if type git-up -t > /dev/null 2>&1; then
	alias gup='git-up'
	alias gp='git-up && git push'
else
	alias gup='git pull --rebase'
	alias gp='gup && git push'	
fi

function gc {
	gaa
	git commit -m "$1"
	gs
}

function goops {
	git commit -a --amend
	gs
}

function gwut {
	echo "
- - - - - - - - - - - - - -
Git Convenience Shortcuts:
- - - - - - - - - - - - - -
gwut - List all Git Convenience commands and prompt symbols.
gs - git status
gaa - Add all changes (including untracted files) to staging
gc "Message" - Commit all new files & changes with message
goops - Add changes to previous commit & edit comessage
gp - Pull (via rebase) then push
gup - Pull (via rebase)
glog - Decorated & graphed log
gdiff - A word-diff of changes
gclean - Compress & garbage collect data store

- - - - - - - - - - - - - -
Prompt Symbols:
- - - - - - - - - - - - - -
The prompt shows the current branch & among other helpful things:

*  - Uncommitted changes
+  - Staged changes
%  - Untracked files
<  - You're behind the origin
>  - You're ahead of the origin
<> - You've diverged from the origin
=  - You're up-to-date with the origin

- - - - - - - - - - - - - -
"
}
