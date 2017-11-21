set -x PATH $PATH ~/code/android-studio/bin
set -x PATH $PATH  ~/Android/Sdk/platform-tools
set -x PATH $PATH ~/anaconda2/bin
set -x MALMO_ROOT ~/Malmo
set -x MALMO_XSD_PATH ~/Malmo/Schemas
set -x JAVA_HOME /usr/lib/jvm/default-java
set -x PATH $PATH JAVA_HOME

alias androidstudio=studio.sh
alias supdate='sudo apt update'
alias supgrade='sudo apt upgrade'
alias sinstall='sudo apt install'
alias osmc='ssh osmc@192.168.0.23'
alias psdvm='ssh ayden@130.209.251.112'
alias sshproxy='ssh -D 8080 -fCN'

alias malmo='~/Malmo/Minecraft/launchClient.sh'

# Easily edit and source this file
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
