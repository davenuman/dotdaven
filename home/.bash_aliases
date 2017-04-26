
# misc
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias dr='drush'
alias h='drush_help'
alias si='drush_si'
alias retool='drush pm-disable -y toolbar && drush pm-enable -y admin_menu admin_menu_toolbar'
alias fastplay='mplayer -af scaletempo'
alias less='less -R'
alias ssh='TERM=rxvt && ssh'
alias 3cal='cal -3 `date -d "+1 month" +"%m %Y"`'
alias vim='TERM=rxvt-unicode-256color vim'
alias vimrc='vim $HOME/.vimrc'
alias gvimlight='gvim +"set background=light"'
alias t=task
alias skype='xhost +local: && sudo -u skype /usr/bin/skype'
alias WatchInfo="setwintitle sensors; watch -n 3 'sensors;xbacklight;uptime;redshift -p'"
alias fig=docker-compose
alias dc=docker-compose
alias a='. bin/activate'
alias dm='docker-machine'
alias j='diary'

# dir listing
alias l='ls -alh'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias lt='l -rt'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Shortcuts
alias dl='cd ~/Downloads'
alias wl='cd ~/workspace; ls'

# git
alias av='git branch -avv'
alias bv='git branch -vv'
alias suno='git status -s -uno'
alias rv='git remote -v'
alias staged='git diff --staged'
alias backone='git co HEAD^ && git show --stat'

