export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
PATH=~/scripts/bin/:$PATH
PATH=~/scripts/bin/:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
PATH=~/scripts/bin/:$PATH

source ~/git-completion.bash

export HISTCONTROL=ignoredups
export BLOCKSIZE=1k
export RED=$(tput setaf 9)
export ORANGE=$(tput setaf 172)
export GREEN=$(tput setaf 002)
export PURPLE=$(tput setaf 141)
export WHITE=$(tput setaf 0)
export RESET=$(tput sgr0)
export CYAN=$(tput setaf 006)

function parse_git_dirty() { [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"; }
function parse_git_branch() { git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"; }

export PS1="\n\[$RED\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \[$GREEN\]on \")\[$CYAN\]\$(parse_git_branch)\[$WHITE\] \[$GREEN\]\$ \[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

function tmuxls { tmux list-sessions; }
function tmuxn { tmux new-session -s $1; }
function tmuxa { tmux a -t $1; }
function tmuxk { tmux kill-session -t $1; }

weather() { curl wttr.in/"$1"?m; }

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls="ls -hpGF"
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias f='open -a Finder ./'                 # Opens current directory in MacOS Finder

alias glp='git log --pretty=format:"%C(yellow)%H %Cred%ad %Cblue%an%Cgreen%d%n%Creset%s%n" --date=short --graph'
