#!/bin/bash
set -e

sudo apt-get install -y curl tmux zsh

ln -s -f $(pwd)/.bash_profile ~/.bash_profile
ln -s -f $(pwd)/.bashrc ~/.bashrc
ln -s -f $(pwd)/.zshrc ~/.zshrc
ln -s -f $(pwd)/.vim ~/.vim
ln -s -f $(pwd)/.vimrc ~/.vimrc
ln -s -f $(pwd)/.screenrc ~/.screenrc
ln -s -f $(pwd)/.tmux.conf ~/.tmux.conf
ln -s -f $(pwd)/.tmux.conf.local ~/.tmux.conf.local
ln -s -f $(pwd)/.gitconfig ~/.gitconfig


mkdir -p ~/.config
ln -s -f $(pwd)/nvim ~/.config/nvim
ln -s -f $(pwd)/.pylintrc ~/.pylintrc

# install neovim (latest), ref: https://github.com/neovim/neovim/blob/master/INSTALL.md
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz


# python support for neovim
pip3 install pynvim

# install nodejs (neovim dependency)
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs
node -v

# install oh-my-zsh
if [[ ! -d $HOME/.oh-my-zsh ]]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
ln -s -f $(pwd)/.zshrc ~/.zshrc
if [[ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
if [[ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

omz reload

