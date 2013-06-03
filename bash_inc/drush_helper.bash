
# quick filter for drush help
function drush_help {
    if [[ $1 ]]; then
        drush --filter=$1
    else
        drush --filter
    fi
}

function drush_si {
  local USER=`grep user ~/.my.cnf | cut -d = -f 2`
  local PASS=`grep password ~/.my.cnf | cut -d = -f 2`
  drush site-install --db-url=mysql://$USER:$PASS@localhost/$1
}

