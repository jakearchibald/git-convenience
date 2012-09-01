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
<dt>gs</dt>
<dd>git status</dd>
<dt>gaa</dt>
<dd>git add --all - Add all changes (including untracked) to staging</dd>
<dt>gc "Message"</dt>
<dd>Commit all changes (except untracked) with message</dd>
<dt>goops</dt>
<dd>Add changes to previous commit & edit commit message</dd>
<dt>gp</dt>
<dd>Pull (via rebase) then push</dd>
<dt>gup</dt>
<dd>Pull (via rebase)</dd>
<dt>glog</dt>
<dd>Decorated & graphed log</dd>
<dt>gdiff</dt>
<dd>A word-diff of changes</dd>
<dt>gclean</dt>
<dd>Compress & garbage collect data store</dd>
</dl>