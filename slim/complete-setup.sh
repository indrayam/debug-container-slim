#!/bin/bash

mkdir -p ~/src
cd ~/src

# Setup the container
cd ~/src
curl -L https://storage.googleapis.com/us-east-4-anand-files/misc-files/slim-bootstrap.tar.gz.enc -H 'Accept: application/octet-stream' --output slim-bootstrap.tar.gz.enc
openssl aes-256-cbc -d -in slim-bootstrap.tar.gz.enc -out slim-bootstrap.tar.gz
tar -xvzf slim-bootstrap.tar.gz
mkdir -p ~/.ssh
mv container-bootstrap/ssh/* ~/.ssh/
chmod 700 ~/.ssh/
mv container-bootstrap/git/gitconfig ~/.gitconfig
ssh -o "StrictHostKeyChecking no" -T git@github.com

# Setup fzf
cd ~
~/.fzf/install --all

# Setup Vim
#rm -rf ~/.vim/bundle/Vundle.vim
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim -c 'PluginInstall' -c 'qall'


# Final touches...
mkdir -p ~/workspace/
echo "You're done! Remove complete-setup.sh file and then source your ~/.bashrc!"
