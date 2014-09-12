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

" Promptline https://github.com/edkolev/promptline.vim
"let g:airrine#extensions#promptline#snapshot_file = "~/.shell_prompt.sh"
let g:airrine#extensions#promptline#color_template = 'insert'
let g:promptline_theme = 'airline'
let branch_symbol = promptline#symbols#get().vcs_branch
let git_info_slice = {
      \'function_name': 'git_info',
      \'function_body': [
        \'function git_info {',
        \'  local branch',
        \'  local branch_symbol="' . branch_symbol . '"',
        \'  local sha',
        \'  if branch=$( { git symbolic-ref --quiet HEAD || git rev-parse --short HEAD; } 2>/dev/null ); then',
        \'    branch=${branch##*/}',
        \'  fi',
        \'  sha=$(git rev-parse --short HEAD 2>/dev/null) || return 1',
        \'  [[ $(git status --porcelain ) ]] && sha="$sha ✘"',
        \'  printf "%s" "${branch_symbol}${branch:-unknown} $sha"',
        \'}']}
let g:promptline_preset = {
	\'a' : [ promptline#slices#host() ],
	\'b' : [ promptline#slices#user() ],
	\'c' : [ promptline#slices#cwd() ],
	\'y' : [ git_info_slice ],
	\'warn' : [ promptline#slices#last_exit_code() ] }


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
set gfn=Inconsolata\ for\ Powerline\ Medium\ 28
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
" bash
au FileType sh setl sw=2 sts=2 et

let g:notes_directories = ['~/documents/notes']

" gvim options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"allow backspacing over everything in insert mode
"set backspace=indent,eol,start

"set history=50		" keep 50 lines of command line history
"set ruler		" show the cursor position all the time
"set showcmd		" display incomplete commands
"set incsearch		" do incremental searching
"set autoindent		" always set autoindenting on
