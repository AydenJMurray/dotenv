set -x PATH $PATH ~/code/android-studio/bin

alias androidstudio=studio.sh

# Easily edit
abbr -a efish 'vim ~/.config/fish/config.fish'
abbr -a sfish 'source ~/.config/fish/config.fish'

# Git aliases
abbr -a ga git add
abbr -a gco git commit -m
abbr -a gch git checkout
abbr -a gs git status
abbr -a gd git diff
abbr -a gb git branch
abbr -a gl git log

# xdg-open is a pain to type
alias a=xdg-open
