echo "> Downloading vimrc ..."
wget http://raw.github.com/IonicaBizau/configs/master/vim-files/.vimrc -O ~/.vimrc

echo "> Installing VIM plugins ..."
vim +BundleInstall +qall
