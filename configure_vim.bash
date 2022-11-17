cp ./.vimrc ~/

mkdir -p ~/.vim/pack/plugin/opt/
mkdir -p ~/.vim/pack/plugin/start/
git clone https://github.com/preservim/nerdtree.git        ~/.vim/pack/plugin/start/nerdtree
git clone https://github.com/tpope/vim-fugitive.git        ~/.vim/pack/plugin/start/fugitive
git clone https://github.com/lifepillar/vim-solarized8.git ~/.vim/pack/plugin/opt/solarized8
git clone https://github.com/vim-airline/vim-airline.git   ~/.vim/pack/plugin/start/vim-airline
git clone https://github.com/airblade/vim-gitgutter.git    ~/.vim/pack/plugin/start/gitgutter
nvim -u NONE -c "helptags vim-gitgutter/doc" -c q

git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/plugin/start/ale
