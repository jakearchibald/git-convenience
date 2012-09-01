# Download the other 3
curl -#Lo ~/.git-completion.bash http://jakemac/git-tools/git-completion.bash
curl -#Lo ~/.terminal-prefs.sh http://jakemac/git-tools/terminal-prefs.sh
curl -#Lo ~/.git-shortcuts.sh http://jakemac/git-tools/git-shortcuts.sh

# Echo the following to a given file
echo "source ~/.git-completion.bash && source ~/.terminal-prefs.sh && source ~/.git-shortcuts.sh"
# Run for current term
source ~/.git-completion.bash && source ~/.terminal-prefs.sh && source ~/.git-shortcuts.sh