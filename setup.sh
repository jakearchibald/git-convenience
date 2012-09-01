# If no git, fail & exit
# Add param that doesn't do the saving stuff

# Decide on .bashrc or .bash_profile
# Download the other 3

# Only if git completion not already here...
curl -#Lo ~/.git-completion.bash http://jakemac/git-tools/git-completion.bash
# add source... to rc/profile
# Run for the current session

curl -#Lo ~/.terminal-prefs.sh http://jakemac/git-tools/terminal-prefs.sh
curl -#Lo ~/.git-shortcuts.sh http://jakemac/git-tools/git-shortcuts.sh
# add source... to rc/profile
# Run for the current session
