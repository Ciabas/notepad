# source control

alias gac="git add . && git commit -am"

alias gc="git checkout"

alias g="git status"

# misc
alias be="bundle exec"
alias ts="thin start"

alias ls='ls -G'

alias c="clear"

alias h="history"

alias hgrep="history | grep"

alias flushdns="dscacheutil -flushcache"

alias ll="ls -al"

alias ..="cd .."

projects(){

 cd $HOME/work/$1

}

alias p=projects

##### put git branch & status in prompt

 RED="\[\033[0;31m\]"

 YELLOW="\[\033[0;33m\]"

 GREEN="\[\033[0;32m\]"

 BLUE="\[\033[0;34m\]"

 LIGHT_RED="\[\033[1;31m\]"

LIGHT_GREEN="\[\033[1;32m\]"

 WHITE="\[\033[1;37m\]"

 LIGHT_GRAY="\[\033[0;37m\]"

 COLOR_NONE="\[\e[0m\]"

 GRAY="\[\033[1;30m\]"

function parse_git_dirty {

 [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"

}

function parse_git_branch {

 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"

}

function set_prompt {

 export PS1="${GREEN}\w${YELLOW}$(parse_git_branch)${COLOR_NONE}$ "

}
