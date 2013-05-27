
# quick filter for drush help
function drush_help {
    if [[ $1 ]]; then
        drush --filter=$1
    else
        drush --filter
    fi
}

