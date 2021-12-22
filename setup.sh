#!/bin/bash

#check if genpass exists, if not download
[ ! -f genpass ] && wget https://raw.githubusercontent.com/shniranjan/genpass/main/genpass

#copy genpass into bin directory
sudo cp ./genpass /usr/local/bin

