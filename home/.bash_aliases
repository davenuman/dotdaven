
# misc
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias dr='drush'
alias h='drush_help'
alias si='drush_si'
alias retool='drush pm-disable -y toolbar && drush pm-enable -y admin_menu admin_menu_toolbar'
alias fastplay='mplayer -af scaletempo -speed 1.33'
alias less='less -R'
alias ssh='TERM=rxvt && ssh'
alias 3cal='cal -3 `date -d "+1 month" +"%m %Y"`'

# dir listing
alias l='ls -alh'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias t='l -rt'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Shortcuts
alias dl='cd ~/Downloads'
alias wl='cd ~/workspace; ls'

# git
alias av='git branch -av'
alias bv='git branch -v'
alias suno='git status -s -uno'
alias rv='git remote -v'
alias staged='git diff --staged'

