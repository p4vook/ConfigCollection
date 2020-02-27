mkdir -p ~/Git
mkdir -p ~/.vim/pack/git-plugins/start
cd ~/Git
printf "Collecting Git dependencies...\n"
git clone https://github.com/pavel-the-best/ConfigCollection.git
git clone https://github.com/vim/vim
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
git clone --depth 1 https://github.com/rhysd/vim-clang-format ~/.vim/pack/git-plugins/start/vim-clang-format
cd vim
printf "Making vim...\n"
./configure --enable-terminal --enable-multibyte --with-features=huge --enable-gui=no
make -j$(nproc)
printf "Installing vim...\n"
sudo make install
cd ~/Git/ConfigCollection
printf "Changing cshrc and vimrc\n"
cp .vimrc ~/.vimrc
cat .cshrc >> ~/.cshrc
