mkdir -p ~/.vim/pack/plugin/opt/
mkdir -p ~/.vim/pack/plugin/start/
git clone https://github.com/preservim/nerdtree.git        ~/.vim/pack/plugin/start/nerdtree
git clone https://github.com/tpope/vim-fugitive.git        ~/.vim/pack/plugin/start/fugitive
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/plugin/opt/solarized8
git clone https://github.com/vim-airline/vim-airline.git   ~/.vim/pack/plugin/start/vim-airline
git clone https://github.com/ycm-core/YouCompleteMe.git    ~/.vim/pack/plugin/start/YouCompleteMe && \
                                                        cd ~/.vim/pack/plugin/start/YouCompleteMe && \
                                                        python3 install.py --clangd-completer
