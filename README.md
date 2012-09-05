# About this fork

This is Jake Archibald's (@jaffathecake) Git Convenience, with one simple change: n00bs, and others, might not want Git Pull to use --rebase (I tried reading about it, really I did - and I almost get it - but for now, I want the lazytimes without wrapping my head around using --rebase day-to-day </excuses>).

# Convenient bits & bobs for Git

Git out-of-the-box isn't your best friend, git-convenience pulls together a few tools that make it that little bit more friendly. You get:

* Tab auto-completion
* A more useful command prompt
* Shortcuts to common operations

Works on OSX, Linux & Windows git-bash.

## Gimmie gimmie gimmie

Trial it in your current terminal session:

```
eval "$(curl -L https://raw.github.com/benseven/git-convenience/master/setup.sh) trial"
```

If it works for you, have it in all your terminals:

```
eval "$(curl -L https://raw.github.com/benseven/git-convenience/master/setup.sh)"
```

## Shortcuts


* `gs` - git status
* `gaa` - git add --all - Add all changes (including untracto staging</dd>
* `gc "Message"` - Commit all changes (except untracked) message</dd>
* `goops` - Add changes to previous commit &amp; edit comessage</dd>
* `gp` - Pull then push - does not use --rebase (read 'About this fork')
* `gup` - Pull (not via --rebase - see 'About this fork')
* `glog` - Decorated &amp; graphed log
* `gdiff` - A word-diff of changes
* `gclean` - Compress &amp; garbage collect data store


If you've installed the wonderful [git-up](https://github.com/aanand/git-up) (which you should), it'll be used instead of `git pull --rebase`.

## Prompt

![Prompt screenshot](https://raw.github.com/benseven/git-convenience/master/screenshot.png)

The prompt shows the current branch & among other helpful things:


* `*` - Uncommitted changes
* `+` - Staged changes
* `%` - Untracked files
* `<` - You're behind the origin
* `>` - You're ahead of the origin
* `<>` - You've diverged from the origin
* `=` - You're up-to-date with the origin

## Other tools & props

* [Jake's Original Git Convenience](https://github.com/jakearchibald/git-convenience) - The original source, with rebasey goodness.
* [git-up](https://github.com/aanand/git-up) - A brilliant tool for syncing branches
* [git completion](https://github.com/git/git/tree/master/contrib/completion) - The scripts used for the prompt & tab completion
