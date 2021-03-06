#!/bin/bash
# Install apps and tools requiring root password

function installVimPlugin() {
	echo "# Installing Vim Plugins #";
	vim +PluginInstall +qall;
}

# install Vundle for vim
echo "# Install Vundle #";
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  installVimPlugin;
else
  read -p "Would you like to install vim plugins ? (y/n) " -n 1
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    installVimPlugin;
  fi;
fi;

# install Vagrant and related tools
~/Projects/dotfiles/vagrant.sh

# install TeamViewer
brewcask teamviewwer
