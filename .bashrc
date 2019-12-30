#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=~/Apps/:$PATH
export EDITOR=vim
alias ls='exa -a' $*
export PAVELK=176.118.165.57
PS1='[\u@\h \W]\$ '
source ~/Git/trueline/trueline.sh
