#!/usr/bin/env bash

function prompt() {
  local git_branch=" $(git_short_sha)$(scm_prompt_info) "
  local prompt_char='» '
#  [[ $(grep `pwd` ~/.drush/*aliases.drushrc.php) ]] && prompt_char='∞ '

  PS1="$red$(scm_char) ${reset_color}\u@\H $yellow\w${reset_color}$git_branch$red$prompt_char$reset_color"
  PS2='> '
  PS4='+ '
}


PROMPT_COMMAND=prompt

SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" ✓"
