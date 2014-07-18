" Following lines added by drush vimrc-install on Fri, 27 Dec 2013 04:27:56 +0000.
set nocompatible
call pathogen#infect('~/.vim/bundle/{}')
call pathogen#infect('~/.drush/vimrc/bundle/{}')
" End of vimrc-install additions.
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

" let g:syntastic_phpcs_conf=" --standard=Drupal --extensions=php,module,inc,install,test,profile,theme"
let g:syntastic_php_phpcs_args = '--standard=Drupal --report=csv  --extensions=' . drupaldetect#php_ext

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"et g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tagbar#enabled = 1

setl sw=2 sts=2 et

" my settings
set autochdir
set nu
set rnu
set ruler
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
set cursorline
set modeline
set ls=2
set wildchar=<Tab> wildmenu wildmode=full
set gfn=Inconsolata\ Medium\ 26
set statusline=[%n]\    "buffer
set statusline+=%t\      "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%{fugitive#statusline()}   "git branch
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" set syntax to markdown for .md files
au BufRead,BufNewFile *.md set filetype=markdown
" twig files
au BufRead,BufNewFile *.twig set filetype=html
" gherkin
au FileType cucumber setl sw=4 sts=4 et

let g:notes_directories = ['~/documents/notes']

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start

"set history=50		" keep 50 lines of command line history
"set ruler		" show the cursor position all the time
"set showcmd		" display incomplete commands
"set incsearch		" do incremental searching
"set autoindent		" always set autoindenting on
