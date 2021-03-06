if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="yellow"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[cyan]%}$SHORT_HOST\
%{$reset_color%} in %{$fg[white]%}%~\
$(git_prompt_info) %{$fg[yellow]%}♫%{$reset_color%} \

%{$fg[white]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[white]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}%{$reset_color%}"
