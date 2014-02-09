echo "> Copying xsession file ..."
sudo cp ./usr/share/xsessions/vimos.desktop /usr/share/xsessions/

echo "> Copying executable file ..."
sudo cp ./usr/bin/vimos /usr/bin

echo "> Installing default applications ..."
sh ./installation/deps.sh

echo "> Deleting ~/.vim/bundle ..."
rm -rf ~/.vim/bundle

echo "> Installing Vundle ..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo "> Making directory: ~/.vimos"
rm -rf ~/.vimos
mkdir ~/.vimos
cp ./start/main.txt ~/.vimos/welcome.txt
cp ./vimos/start.sh ~/.vimos/start.sh

echo "> Setting up .vimrc file"

if ls ~/.vimrc >/dev/null; then
    while true; do
        read -p "> Do you want to override the ~/.vimrc file?" yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) sh ./installation/postInstall.sh; exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done
fi

sh ./installation/setVimrc.sh;
sh ./installation/postInstall.sh;
