execute pathogen#infect()
syntax on
filetype plugin indent on

<<<<<<< HEAD
let g:airline_powerline_fonts = 1
=======
>>>>>>> vanity/master
set term=screen-256color

set number
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
<<<<<<< HEAD
set colorcolumn=81
 
=======
set colorcolumn=121

>>>>>>> vanity/master
set hidden
set ignorecase
set smartcase

set backspace=indent,eol,start
set nocompatible
set clipboard=unamed
<<<<<<< HEAD
colorscheme solarized
=======

set splitright                              "when using split, open to the right

set background=dark
colorscheme solarized8_high


"NERDTree toggle shortcut - just press the F2 key
map <F2> :NERDTreeToggle<CR>


"text navigation remapping
noremap j h
noremap k j
noremap l k
noremap ; l


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


"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
"let g:airline_powerline_fonts = 1


"map <F9> :YcmCompleter FixIt<CR> " Apply YCM FixIt
"
"
"
"


"flag extraneous whitespace
":au BufNewFile,BufRead *.py *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


"auto-complete window close
"space-g for function definition
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"vim syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*


"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"ignore some semicolon, pound comment and spacing errors
"E703 = statement ends with ';'
"E241 = multi-space after ','
"E203 = whitespace before ','
"E124 = closing bracket alignment
"let g:syntastic_python_flake8_args='--ignore=E114,E116,E127,E251,E303,E305,E226,E221,E265,E703,E124,E241,E203,E501,E502,E262'
>>>>>>> vanity/master
