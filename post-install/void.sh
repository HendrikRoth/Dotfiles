#!/bin/sh
sudo xbps-install -Su
sudo xbps-install -Su

sudo xbps-install -S git neovim zsh gist xorg-minimal xorg-fonts kitty bspwm sxhkd neomutt broot nnn mesa-dri libXrandr libXcursor chromium curl font-firacode

chsh -s $(which zsh)

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[ ! -d "$HOME/.nvm" ] && git clone --depth=1 https://github.com/nvm-sh/nvm.git $HOME/.nvm

zsh
source $HOME/.zshrc

nvm install node
npm install -g spaceship-prompt
