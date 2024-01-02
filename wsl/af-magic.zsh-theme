# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/

# dashed separator size
function afmagic_dashes {
  # check either virtualenv or condaenv variables
  local python_env_dir="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"
  local python_env="${python_env_dir##*/}"

  # if there is a python virtual environment and it is displayed in
  # the prompt, account for it when returning the number of dashes
  if [[ -n "$python_env" && "$PS1" = *\(${python_env}\)* ]]; then
    echo $(( COLUMNS - ${#python_env} - 3 ))
  else
    echo $COLUMNS
  fi
}

# primary prompt: dashed separator, directory and vcs info
PS1="${FG[230]}\${(l.\$(afmagic_dashes)..-.)}%{$reset_color%}
${FG[123]}%~\$(git_prompt_info)\$(hg_prompt_info) ${FG[135]}%(!.#.»)%{$reset_color%} "
PS2="%{$fg[red]%}\ %{$reset_color%}" # dashed separator > info > (>>)

# right prompt: return code, virtualenv and context (user@host)
RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
if (( $+functions[virtualenv_prompt_info] )); then
  RPS1+='$(virtualenv_prompt_info)'
fi
RPS1+=" ${FG[145]}%n@%m%{$reset_color%}" # user@PC

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[123]}(${FG[191]}" # ( & master
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}" # *
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[123]})%{$reset_color%}" # )

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX=" ${FG[123]}(${FG[156]}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="${FG[123]})%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[123]}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"