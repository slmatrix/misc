"turn on syntax highlights
syntax on
filetype plugin indent on


set expandtab
set autoindent
set tabstop=8
set shiftwidth=8
set softtabstop=8
set colorcolumn=65

"turn hybrid line numbers on
:set number relativenumber
:set nu rnu
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

set term=screen-256color
"background is dark, so set colors accordingly
set background=dark
"load custom colors from plugin
colorscheme solarized8_high


"text search is case insensitive
set ignorecase
"turns on case sensitive search if >1 letters are upper case
set smartcase
"highlight as text matches are found
set incsearch
"highlight all instances of the matched text
set hlsearch
"remove highlights turned on by 'hlsearch' when 2 newlines read
:nnoremap <CR> :nohlsearch<CR><CR>

"cycle through files without saving
set hidden
"default render/type files as unicode
set encoding=utf-8
"backspace over \n, insert point, auto-indents
set backspace=eol,start,indent
"split-pane opens on the right, always
set splitright


"remap navigation keys; order correctly to prevent overwrites
" ; = move right
noremap ; l
" l = move down
noremap l j
" j = move left
noremap j h
" k = move up
noremap k k


"'tab' indents to right
"'shift+tab' indents to left
:vmap <Tab> >
:vmap <S-Tab> <


"let g:indentLine_char = '│'
"NERDTree toggle shortcut - just press the 'home' key
map OH :NERDTreeToggle<CR>
"Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


"cc and c++ file extensions now count as cpp files
autocmd BufNewFile, BufRead *.c++ setfiletype cpp
autocmd BufNewFile, BufRead *.cc setfiletype cpp


"remap esc to caps
"TODO: find simple code


"populates g:airline_symbols
let g:airline_powerline_fonts = 1
"integrate ALE errors/warnings with Airline's statusline.
let g:airline#extensions#ale#enabled = 1


"redefine vim-emmet HTML complete toggle
"change from 'cntl+y,' to 'end,' key
"let g:user_emmet_leader_key="<C-Z>"
"let g:user_emmet_leader_key='OC'
"imap OC OC,
let g:user_emmet_leader_key=","


"enable ALE completion.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
"set completeopt=menu,menuone,preview,noselect,noinsert
"let g:ale_cpp_clangd_options = "-stdlib=libc++ -std=c++17"

"navigate b/w errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-l> <Plug>(ale_next_wrap)

"execute fixers when VIM buffer is saved (:w).
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\       '*': ['remove_trailing_lines','trim_whitespace'],
\       'javascript': ['prettier','eslint']
\}
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:ale_sign_error   = '❌'
let g:ale_sign_warning = '⚠️'


"plugins need adding to runtimepath to generate help tags.
packloadall
"load all helptags now, after plugins have been loaded.
"ignore messages and errors.
silent! helptags ALL
