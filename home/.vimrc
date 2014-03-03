" Following lines added by drush vimrc-install on Fri, 27 Dec 2013 04:27:56 +0000.
set nocompatible
call pathogen#infect('/home/dave/.drush/vimrc/bundle/{}')
call pathogen#infect('/home/dave/.vim/bundle/{}')
" End of vimrc-install additions.
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

" let g:syntastic_phpcs_conf=" --standard=Drupal --extensions=php,module,inc,install,test,profile,theme"
let g:syntastic_php_phpcs_args = '--standard=Drupal --report=csv  --extensions=' . drupaldetect#php_ext

" my settings
set nu
set rnu
set ruler
autocmd BufWritePre * :%s/\s\+$//e

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start

"set history=50		" keep 50 lines of command line history
"set ruler		" show the cursor position all the time
"set showcmd		" display incomplete commands
"set incsearch		" do incremental searching
"set hlsearch
"set autoindent		" always set autoindenting on

