init_deps

PS1=$' %F{white}$(prompt-pwd) %b%F{white}{ %B%(?:%F{green}:%F{red})%{%G%} %b%F{white}}${(e)git_info[prompt]}%f%b\n ➤ '
unset RPS1

