mkdir -p ~/Git
mkdir -p ~/.vim/pack/git-plugins/start
cd ~/Git
git clone https://github.com/pavel-the-best/ConfigCollections.git
git clone https://github.com/petobens/trueline
git clone https://github.com/vim/vim
git clone https://github.com/MidnightCommander/mc
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
git clone --depth 1 https://github.com/morhetz/gruvbox ~/.vim/pack/git-plugins/start/gruvbox
git clone --depth 1 https://github.com/rhysd/vim-clang-format ~/.vim/pack/git-plugins/start/vim-clang-format
cd vim
./configure --enable-pythoninterp --enable-python3interp --enable-luainterp --enable-perlinterp --enable-terminal --enable-multibyte --with-features=huge --enable-gui=no CC=clang
make -j$(nproc)
sudo make install
cd ~/Git/ConfigCollections
cp .vimrc ~/.vimrc
cp .bashrc ~/.bashrc
cd ~/Git/mc
./autogen.sh
./configure --enable-charset --with-screen=slang CC=clang
make -j$(nproc)
sudo make install
