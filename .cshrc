set red="%{\033[1;31m%}"
set green="%{\033[0;32m%}"
set yellow="%{\033[1;33m%}"
set blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set cyan="%{\033[1;36m%}"
set white="%{\033[0;37m%}"
set end="%{\033[0m%}"

source /usr/share/git/completion/git-completion.tcsh

set prompt = "%{${green}%}[%n] %{${yellow}%}%~%{${end}%} %# "

unset red, green, yellow, blue, magenta, cyan, white, end

set autoexpand
set autolist
set color
set colorcat
set ellipsis
bindkey -v

alias ls exa -a --git --icons

bindkey -k up history-search-backward
bindkey -k down history-search-forward
