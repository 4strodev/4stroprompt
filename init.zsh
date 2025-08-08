init_deps

PS1=$' %F{white}$(prompt-pwd)${(e)git_info[prompt]}%f%b\n %b%F{white}{ %B%(?:%F{green}:%F{red})%{%G%} %b%F{white}} '
unset RPS1

