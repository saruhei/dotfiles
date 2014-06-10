# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias hg='history | grep'
alias findc='find ./* -name'
alias ls='ls -G'
alias sc=parse_ssh_config
alias gh="git log --graph --decorate --oneline  --pretty='format:%C(yellow)%h%Creset <%ad> %d %s %Cgreen(%an)%Creset %Cred%d%Creset'";
alias s='echo "find ./* -type f -print | xargs grep \"hoge\" /dev/null"';
export EDITOR=/usr/bin/vim

source /etc/bash_completion.d/git
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\n\[\033[01;33m\]\u@\h\[\033[01;34m\] \w$(__git_ps1) \$\[\033[00m\] '
