#!/bin/bash

echo "Atualizando Stack"
sudo stack upgrade

echo "Instalando ghc-mod"
stack config set resolver lts-8.24
stack install ghc-mod

echo "Baixando o vimrc"
wget "https://raw.githubusercontent.com/Vimerum/utilities/master/vimrc_with_haskell" -O ~/.vimrc

echo "Instalando Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Instalando plugins"
vim -c 'PluginInstall' -c 'qa!'

echo "Compilando vimproc"
cd ~/.vim/bundle/vimproc
make
cd
