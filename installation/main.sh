ech "> Copying xsession file ..."
sudo cp ./usr/share/xsessions/vimos.desktop /usr/share/xsessions/

echo "> Copying executable file ..."
sudo cp ./usr/bin/vimos /usr/bin

echo "> Installing default applications ..."
sh ./installation/deps.sh

echo "> Setting up .vimrc file"

if ls ~/.vimrc >/dev/null; then
    while true; do
        read -p "> Do you want to override the ~/.vimrc file?" yn
        case $yn in
            [Yy]* ) sh ./installation/setVimrc.sh; break;;
            [Nn]* ) sh ./installation/postInstall.sh; exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done
fi

sh ./installation/postInstall.sh;
