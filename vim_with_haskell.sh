#!/bin/bash

echo "Atualizando Stack"
sudo stack upgrade

echo "Instalando ghc-mod, hlint, hdevtools e hfmt"
stack config set resolver lts-9
stack install ghc-mod hlint hdevtools hfmt

echo "Baixando o vimrc"
wget "https://raw.githubusercontent.com/Vimerum/utilities/master/vimrc_with_haskell" -O ~/.vimrc

echo "Instalando Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.Vim

echo "Instalando plugins"
vim -c 'PluginInstall' -c 'qa!'

echo "Compilando vimproc"
cd ~/.vim/bundle/vimproc
make
cd
