<?php

$options['shell-aliases']['h'] = 'help';
$options['shell-aliases']['noncore'] = 'pm-list --no-core';
$options['shell-aliases']['unsuck'] = 'pm-disable -y overlay,dashboard';
$options['shell-aliases']['clone'] = 'dl --package-handler=git_drupalorg';

# change to the admin_menu_toolbar
$options['shell-aliases']['retool'] = '!drush pm-download admin_menu && drush pm-disable -y toolbar && drush pm-enable -y admin_menu_toolbar';

