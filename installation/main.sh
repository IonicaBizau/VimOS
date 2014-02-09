echo "> Copying xsession file ..."
sudo cp ./usr/share/xsessions/vimos.desktop /usr/share/xsessions/

echo "> Copying executable file ..."
sudo cp ./usr/bin/vimos /usr/bin

echo "> Installing default applications ..."
sh ./installation/deps.sh
