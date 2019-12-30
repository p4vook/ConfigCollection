#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
PS1='[\u@\h \W]\$ '
source ~/Git/trueline/trueline.sh
