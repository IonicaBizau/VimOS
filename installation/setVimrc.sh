echo "> Deleting ~/.vim/bundle ..."
rm -rf ~/.vim/bundle

echo "> Installing Vundle ..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "> Downloading vimrc ..."
wget http://raw.github.com/IonicaBizau/configs/master/vim-files/.vimrc -O ~/.vimrc

echo "> Installing VIM plugins ..."
vim +BundleInstall +qall
