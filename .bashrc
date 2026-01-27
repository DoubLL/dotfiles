#
# ~/.bashrc
#
# Alias for config file git repo
# If not running interactively, don't do anything

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

HISTSIZE=10000 # Save more history
HISTFILESIZE=20000
HISTTIMEFORMAT="%F %T " # Add timestamps
HISTIGNORE="ls:ll:cd:pwd:clear:history:config" # Dont save these
# Note: set histappend to on with shopt


alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'