" Following lines added by drush vimrc-install on Fri, 27 Dec 2013 04:27:56 +0000.
set nocompatible
call pathogen#infect('~/.vim/bundle/{}')
call pathogen#infect('~/.drush/vimrc/bundle/{}')
" End of vimrc-install additions.
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

colorscheme solarized
set background=dark
highlight clear SignColumn " for gitgutter

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
set gfn=Inconsolata-dz\ for\ Powerline\ 12
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
set noswapfile

" set syntax to markdown for .md files
au BufRead,BufNewFile *.md set filetype=markdown
" twig files
au BufRead,BufNewFile *.twig set filetype=html
" gherkin
au FileType cucumber setl sw=2 sts=2 et
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

set spell
"set history=50		" keep 50 lines of command line history
"set ruler		" show the cursor position all the time
"set showcmd		" display incomplete commands
"set incsearch		" do incremental searching
"set autoindent		" always set autoindenting on

map <a-j> <c-w>w
map <a-k> <c-w>W
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M%p")<CR><Esc>
imap <F3>  <C-R>=strftime("%Y-%m-%d %a %I:%M%p")<CR>
