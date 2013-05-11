#!/usr/bin/env bash

function prompt() {
  local git_branch="$(git_short_sha)$(scm_prompt_info)"
  if [[ $git_branch ]]
  then
    git_prompt=" $git_branch "
  else
    git_prompt=" "
  fi

  local prompt_char='» '
#  [[ $(grep `pwd` ~/.drush/*aliases.drushrc.php) ]] && prompt_char='∞ '

  PS1="$red$(scm_char) ${reset_color}\u@\H $yellow\w${reset_color}$git_prompt$prompt_char$reset_color"
  PS2='> '
  PS4='+ '
}


PROMPT_COMMAND=prompt

SCM_THEME_PROMPT_DIRTY=" $red✗${reset_color}"
SCM_THEME_PROMPT_CLEAN=" $green✓${reset_color}"
SCM_THEME_PROMPT_PREFIX='|'
SCM_THEME_PROMPT_SUFFIX=''

