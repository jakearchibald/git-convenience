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

<dl>
<dt>`gs`</dt>
<dd>git status</dd>
<dt>`gaa`</dt>
<dd>git add --all - Add all changes (including untracked) to staging</dd>
<dt>`gc "Message"`</dt>
<dd>Commit all changes (except untracked) with message</dd>
<dt>`goops`</dt>
<dd>Add changes to previous commit &amp; edit commit message</dd>
<dt>`gp`</dt>
<dd>Pull (via rebase) then push</dd>
<dt>`gup`</dt>
<dd>Pull (via rebase)</dd>
<dt>`glog`</dt>
<dd>Decorated &amp; graphed log</dd>
<dt>`gdiff`</dt>
<dd>A word-diff of changes</dd>
<dt>`gclean`</dt>
<dd>Compress &amp; garbage collect data store</dd>
</dl>

If you've installed the wonderful [git-up]https://github.com/aanand/git-up (which you should), it'll be used instead of `git pull --rebase`.

## Prompt

![Prompt screenshot](https://raw.github.com/jakearchibald/git-convenience/master/screenshot.png)

The prompt shows the current branch & among other helpful things:

<dl>
<dt>`*`</dt>
<dd>Uncommitted changes</dd>
<dt>`%`</dt>
<dd>Untracked files</dd>
<dt>`&lt;`</dt>
<dd>You're behind the origin</dd>
<dt>`&gt;`</dt>
<dd>You're ahead of the origin</dd>
<dt>`&lt;&gt;`</dt>
<dd>You've diverged from the origin</dd>
</dl>