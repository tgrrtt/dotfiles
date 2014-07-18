PROMPT='%{$fg[cyan]%}%c%{$reset_color%} %{$fg_bold[cyan]%}➜ '
RPROMPT='%{$fg[green]%}$(git_prompt_info)%  %{$fg_bold[blue]%}%*%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="<%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[red]%}✗%{$fg[green]%}>%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}>"
