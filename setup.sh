command -v git >/dev/null 2>&1 || { 
	echo >&2 "git not found - install git & try again"
	exit 1
}

function git_load_helper {
	if [ "$4" = "trial" ]; then
		echo "Trialing $1"
		eval "$(curl -Ls $1)"
	else
		echo "Saving $1"
		curl -Lso "$2" "$1"
		source "$2"
		echo "source \"$2\"  # Added by git-convenience" >> "$3"
	fi
}

function setup_git_convenience {
	# Decide on .bashrc or .bash_profile
	local bash_startup_file="$HOME/.bashrc"
	if [[ $(uname) = Darwin* ]]; then
		local bash_startup_file="$HOME/.bash_profile"
	fi

	# If git completion not installed...
	if ! type -t __gitcomp > /dev/null 2>&1; then
		git_load_helper https://raw.github.com/git/git/e90020cdb3273af3b0c7915c0aacf16b19bbf994/contrib/completion/git-completion.bash "$HOME/.git-completion.bash" "$bash_startup_file" "$1"
	fi

	# If git prompt not installed...
	if ! type -t __git_ps1 > /dev/null 2>&1; then
		git_load_helper https://raw.github.com/git/git/e90020cdb3273af3b0c7915c0aacf16b19bbf994/contrib/completion/git-prompt.sh "$HOME/.git-prompt.sh" "$bash_startup_file" "$1"
	fi

	git_load_helper https://raw.github.com/benseven/git-convenience/master/terminal-prefs.sh "$HOME/.terminal-prefs.sh" "$bash_startup_file" "$1"
	git_load_helper https://raw.github.com/benseven/git-convenience/master/git-shortcuts.sh "$HOME/.git-shortcuts.sh" "$bash_startup_file" "$1"

	unset setup_git_convenience
	unset git_load_helper
}

setup_git_convenience
