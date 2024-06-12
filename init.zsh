setopt nopromptbang prompt{cr,percent,sp,subst}

zstyle ':zim:prompt-pwd' git-root yes

typeset -gA git_info
if (( ${+functions[git-info]} )); then
  zstyle ':zim:git-info:branch' format '%b'
  zstyle ':zim:git-info:commit' format '%c'
  zstyle ':zim:git-info:clean' format '%F{green}%{%G✓%}'
  zstyle ':zim:git-info:dirty' format '%F{yellow}%{%G✗%}'
  zstyle ':zim:git-info:keys' format \
      'prompt' ' %F{cyan}%b%c %C%D'

  autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info
fi

PS1='%b%F{white}{ %B%(?:%F{green}:%F{red})%{%G%} %b%F{white}} %F{white}$(prompt-pwd)${(e)git_info[prompt]}%f%b '
unset RPS1

