#!/bin/sh

echo "install tools via packet-manager"
apt-get update && apt-get install -y \
    curl \
    git \
    zsh \
    python3 \
    python3-pip \
    fzf \
    vim \
    tmux

echo "setup vim config"
cp .vimrc ~/.vimrc

echo "install ohmyzsh for plugin managing for zsh"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o zsh_install.sh
sh ./zsh_install.sh --unattended

echo "install autosuggestions for zsh"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp .zshrc ~/.zshrc

echo "install ipython"
pip3 install ipython

echo "switch to zsh as"
chsh -s $(which zsh)
