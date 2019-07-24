#!/bin/bash

echo "Baixando o vimrc"
wget "https://raw.githubusercontent.com/Vimerum/utilities/master/vimrc" -O ~/.vimrc

echo "Instalando Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.Vim

echo "Instalando plugins"
vim -c 'PluginInstall' -c 'qa!'
