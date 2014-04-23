# Set useful aliases - Some from https://github.com/startup-class/dotfiles

# Prevent accidents
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

# directory
alias ll="ls -alrtF --color"
alias ..='cd ..'

# Git commands
alias commit="git commit -am"
alias reset="git reset --hard"
alias rebase="git pull --rebase origin"
alias push="git push origin"

# Python
alias server="python -m SimpleHTTPServer"
