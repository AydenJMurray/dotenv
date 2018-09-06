set -x JAVA_HOME /usr/lib/jvm/default-java
set -x PATH $PATH JAVA_HOME

alias supdate='sudo apt update'
alias supgrade='sudo apt upgrade'
alias sinstall='sudo apt install'

# Easily edit and source this file
abbr -a efish 'vim ~/.config/fish/config.fish'
abbr -a sfish 'source ~/.config/fish/config.fish'

# Easily edit and source vimrc
abbr -a evim 'vim ~/.vimrc'
abbr -a svim 'vim +"source ~/.vimrc" +qall'

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

#Setup DEY toolkit environment
bass source /opt/dey/2.4-r1/environment-setup-cortexa9hf-neon-dey-linux-gnueabi
