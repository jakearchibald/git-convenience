# Convenient bits & bobs for Git

Git out-of-the-box isn't your best friend, git-convenience pulls together a few tools that make it that little bit more friendly. You get:

* Tab auto-completion
* A more useful command prompt
* Shortcuts to common operations

Works on OSX, Linux & Windows git-bash.

## Gimmie gimmie gimmie

Trial it in your current terminal session:

```
eval "$(curl -L https://raw.github.com/jakearchibald/git-convenience/master/setup.sh) trial"
```

If it works for you, have it in all your terminals:

```
eval "$(curl -L https://raw.github.com/jakearchibald/git-convenience/master/setup.sh)"
```

## Shortcuts


* `gs` - git status
* `gaa` - git add --all - Add all changes (including untracto staging</dd>
* `gc "Message"` - Commit all changes (except untracked) message</dd>
* `goops` - Add changes to previous commit &amp; edit comessage</dd>
* `gp` - Pull (via rebase) then push
* `gup` - Pull (via rebase)
* `glog` - Decorated &amp; graphed log
* `gdiff` - A word-diff of changes
* `gclean` - Compress &amp; garbage collect data store


If you've installed the wonderful [git-up](https://github.com/aanand/git-up) (which you should), it'll be used instead of `git pull --rebase`.

## Prompt

![Prompt screenshot](https://raw.github.com/jakearchibald/git-convenience/master/screenshot.png)

The prompt shows the current branch & among other helpful things:


* `*` - Uncommitted changes
* `+` - Staged changes
* `%` - Untracked files
* `&lt;` - You're behind the origin
* `&gt;` - You're ahead of the origin
* `&lt;&gt;` - You've diverged from the origin
* `=` - You're up-to-date with the origin

## Other tools & props

* [git-up](https://github.com/aanand/git-up) - A brilliant tool for syncing branches
* [git completion](https://github.com/git/git/tree/master/contrib/completion) - The scripts used for the prompt & tab completion