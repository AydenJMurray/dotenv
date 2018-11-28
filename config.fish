set -x JAVA_HOME /usr/lib/jvm/default-java
set -x PATH $PATH JAVA_HOME

set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles ' ☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

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

function fish_prompt
  set last_status $status

  set_color yellow
  printf '%s' (whoami)
  set_color purple
  printf '@%s' (prompt_hostname)
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s> ' (__fish_git_prompt)

  set_color normal
end 
