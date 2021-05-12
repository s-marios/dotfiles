# get current directory so we can link stuff in place
# if you have spaces in your path...
PWD=`pwd`

# link things to places
ln -s $PWD/vim/.vimrc ~/ || true
ln -s $PWD/screen/.screenrc ~/ || true
ln -s ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer ~/.cargo/bin/ || true 

# create plugin folder
GIT_PLUGINS=~/.vim/pack/git-plugins/start
mkdir -p GIT_PLUGINS

# clone repositories
# ALE
git clone --depth 1 https://github.com/dense-analysis/ale.git $GIT_PLUGINS/ale

# airline
git clone https://github.com/vim-airline/vim-airline $GIT_PLUGINS/vim-airline

# fugitive
git clone https://tpope.io/vim/fugitive.git $GIT_PLUGINS/fugitive
