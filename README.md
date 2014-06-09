# Convenient bits & bobs for Git

Git out-of-the-box isn't your best friend, git-convenience pulls together a few tools that make it that little bit more friendly. You get:

* Tab auto-completion
* A more useful command prompt
* Shortcuts to common operations

Works on OSX, Linux & Windows git-bash.

## Gimmie gimmie gimmie

Trial it in your current terminal session:

```
eval "$(curl -L https://raw.githubusercontent.com/jakearchibald/git-convenience/master/setup.sh) trial"
```

If it works for you, have it in all your terminals:

```
eval "$(curl -L https://raw.githubusercontent.com/jakearchibald/git-convenience/master/setup.sh)"
```

## Shortcuts

* `gwut` - List all Git Convenience commands and prompt symbols
* `gs` - git status
* `gaa` - Add all changes (including untracted files) to staging
* `gc "Message"` - Commit all new files & changes with message
* `goops` - Add changes to previous commit & edit comessage
* `gp` - Pull (via rebase) then push
* `gup` - Pull (via rebase)
* `glog` - Decorated & graphed log
* `glogo` - As glog, including orphan commits
* `gdiff` - A word-diff of changes
* `gclean` - Compress & garbage collect data store


If you've installed the wonderful [git-up](https://github.com/aanand/git-up) (which you should), it'll be used instead of `git pull --rebase`.

## Prompt

![Prompt screenshot](https://raw.githubusercontent.com/jakearchibald/git-convenience/master/screenshot.png)

The prompt shows the current branch & among other helpful things:


* `*` - Uncommitted changes
* `+` - Staged changes
* `%` - Untracked files
* `<` - You're behind the origin
* `>` - You're ahead of the origin
* `<>` - You've diverged from the origin
* `=` - You're up-to-date with the origin

## Other tools & props


* [git-up](https://github.com/aanand/git-up) - A brilliant tool for syncing branches
* [git completion](https://github.com/git/git/tree/master/contrib/completion) - The scripts used for the prompt & tab completion

