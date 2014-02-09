echo "> Downloading vimrc ..."
wget https://raw.github.com/IonicaBizau/configs/master/vim-files/.vimrc -O ~/.vimrc

echo "> Installing VIM plugins ..."
vim +BundleInstall +qall
