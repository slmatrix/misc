syntax on                  "turn on syntax highlights
filetype plugin indent on


set term=screen-256color
set background=dark          "background is dark, so set colors accordingly
colorscheme solarized8_high  "load custom colors from plugin


"remapping navigation keys
"'j' moves left
noremap j h 
"'l' moves down
noremap l k
"'k' moves up
noremap k j
"';' move right
noremap ; l


"NERDTree toggle shortcut - just press the F2 key
map <F2> :NERDTreeToggle<CR>


set number
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set colorcolumn=121


set ignorecase  "text search is case insensitive
set smartcase   "turns on case sensitive search if >1 letters are upper case
set incsearch   "highlight as text matches are found
set hlsearch    "highlight all instances of the matched text
"remove highlights turned on by 'hlsearch' when 2 newlines read
:nnoremap <CR> :nohlsearch<CR><CR>


set hidden                      "cycle through files without saving modifications to disk
set encoding=utf-8              "render/type files as unicode unless file encoding says otherwise
set backspace=indent,eol,start  "backspace works over auto-indents, \n, insert-mode start (default action on vim >= 8.0)
set splitright                  "split-pane opens on the right, always


"remap esc to caps
"TODO: find simple code




"cc and c++ file extensions now count as cpp files
autocmd BufNewFile, BufRead *.c++ setfiletype cpp
autocmd BufNewFile, BufRead *.cc setfiletype cpp


"follow the PEP8ish indentation protocol
:au BufNewFile,BufRead *.py
      \ set expandtab       |
      \ set tabstop=2       |
      \ set softtabstop=2   |
      \ set shiftwidth=4    |
      \ set textwidth=121   |
      \ set expandtab       |
      \ set autoindent      |
      \ set fileformat=unix |
