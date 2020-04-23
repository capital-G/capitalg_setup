#!/bin/sh

apt-get update

apt-get install -y curl git zsh python3 python3-pip fzf vim tmux

pip3 install ipython

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o zsh_install.sh

sh ./zsh_install.sh --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp .zshrc ~/.zshrc

cp .vimrc ~/.vimrc

chsh -s $(which zsh)
