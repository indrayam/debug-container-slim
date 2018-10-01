### Linux ###

# Basic Environment variables
export HOME="/root"
export EDITOR='vim'
export PAGER='less'
export PATH='${HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

# Aliases specific to being productive
alias ls='ls --color=auto'
alias c='clear'
alias g='git'
alias g=git
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias ggpull='git pull origin $(current_branch)'
alias ggpulr='git pull --rebase origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias gh='git h'
alias glog='git log --oneline --decorate --color --graph'
alias gloga='git log --oneline --decorate --color --graph --all'
alias grh='git reset HEAD'
alias grup='git remote update'
alias gst='git status'

function rand() {
    cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

# Bash completions
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Get started
export PS1='\u at \h in \w \$ '
cat $HOME/.om
if [ -f ~/complete-setup.sh ]
then
    echo "Run the complete-setup.sh file and you're all set!"
fi


