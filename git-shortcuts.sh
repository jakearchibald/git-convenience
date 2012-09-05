alias gs='git status'
alias gaa='git add -A'
alias gdiff='git diff --color-words'
alias gclean='git gc --prune=now && git remote prune origin'
alias glog='git log --graph --oneline --all --decorate'

if type git-up -t > /dev/null 2>&1; then
	alias gup='git-up'
	alias gp='git-up && git push'
else
	alias gup='git pull'
	alias gp='gup && git push'	
fi

function gc {
	git commit -am "$1"
	gs
}

function goops {
	git commit -a --amend
	gs
}

function gwut {
	#!/bin/bash
	echo "
- - - - - - - - - - - - - -
Git Convenience Shortcuts:
- - - - - - - - - - - - - -
gwut - List all Git Convenience commands.
gs - git status
gaa - git add --all - Add all changes (including untracto staging)
gc "Message" - Commit all changes (except untracked) message
goops - Add changes to previous commit & edit comessage
gp - Pull then push - does not use --rebase (read 'About this fork')
gup - Pull (not via --rebase - see 'About this fork')
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
