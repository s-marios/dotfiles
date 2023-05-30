# get current directory so we can link stuff in place
# if you have spaces in your path...
PWD=`pwd`

# link things to places
ln -s $PWD/vim/.vimrc $HOME/ || true
ln -s $PWD/screen/.screenrc $HOME/ || true
ln -s $PWD/tmux/.tmux.conf $HOME/ || true

# create nvim config folder
NVIM_CONFIG=$HOME/.config/nvim
mkdir -p $NVIM_CONFIG

# link nvim config
ln -s $PWD/nvim/init.lua $NVIM_CONFIG || true

# create nvim color folder
COLOR_FOLDER=$NVIM_CONFIG/colors
mkdir -p $COLOR_FOLDER
ln -s $PWD/nvim/colors/jello.vim $COLOR_FOLDER/jello.vim || true

# create plugin folder
GIT_PLUGINS=$HOME/.vim/pack/git-plugins/start
mkdir -p $GIT_PLUGINS

# clone repositories
# ALE
# git clone --depth 1 https://github.com/dense-analysis/ale.git $GIT_PLUGINS/ale
# My version of ale
git clone --depth 1 https://github.com/s-marios/ale.git $GIT_PLUGINS/ale

# airline
git clone https://github.com/vim-airline/vim-airline $GIT_PLUGINS/vim-airline

# fugitive
git clone https://tpope.io/vim/fugitive.git $GIT_PLUGINS/fugitive
