#!/bin/bash

#check dependent package installed or not
if [ -z $(which bc) ]; then
	echo 'Required package (bc) not installed.  Aboarting installation...'
	sleep 2
	exit 1

#check if genpass exists, if not download
[ ! -f genpass ] && wget https://raw.githubusercontent.com/shniranjan/genpass/main/genpass

#enable executable
chmod +x genpass
#copy genpass into bin directory
sudo cp ./genpass /usr/local/bin

exit 0
