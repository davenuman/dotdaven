#!/usr/bin/env bash

function prompt() {
  local return_status=""
  local user_host="${green}\h${reset_color}"
  local current_path="\w"
  local n_commands="\!"
  local git_branch="$(git_short_sha)$(scm_prompt_info)"
  local prompt_char='» '
#  [[ $(grep `pwd` ~/.drush/*aliases.drushrc.php) ]] && prompt_char='∞ '

  history -a
  history -c
  history -r
  PS1="$(scm_char) [$blue\u$reset_color@$green\H$reset_color] $yellow\w${reset_color} $git_branch $red$prompt_char$reset_color"
  PS2='> '
  PS4='+ '
}


PROMPT_COMMAND=prompt

SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" ✓"
