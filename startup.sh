#!/bin/bash

cd $HOME/

### apt-get
sudo apt-get update

# upgrade option

# settings
env LANG=C xdg-user-dirs-gtk-update

### install
# shell..
sudo apt-get install -y tree wget curl
sudo apt-get install -y bzip2 libbz2-dev
sudo apt-get install -y zsh

# compiler, dev..
sudo apt-get install -y make build-essential

# ソース管理
sudo apt-get install -y git mercurial subversion

# Python
sudo apt-get install -y libsqlite3-dev sqlite3
sudo apt-get install -y libssl-dev openssl
sudo apt-get install -y libreadline6 libreadline6-dev

git clone git://github.com/yyuu/pyenv.git $HOME/.pyenv

mkdir -p $HOME/.pyenv/plugins
git clone git://github.com/yyuu/pyenv-virtualenv.git $HOME/.pyenv/plugins

echo '# pyenv' >> .bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> .bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> .bashrc
echo 'eval "$(pyenv init -)"' >> .bashrc

echo '# pyenv' >> .zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> .zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> .zshrc
echo 'eval "$(pyenv init -)"' >> .zshrc


# Ruby
git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
mkdir -p $HOME/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins

echo '# rbenv' >> .bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bashrc
echo 'eval "$(rbenv init -)"' >> .bashrc

echo '# rbenv' >> .zshrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .zshrc
echo 'eval "$(rbenv init -)"' >> .zshrc

# Node.js
# curl https://raw.githubusercontent.com/creationix/nvm/v0.18.0/install.sh | sh
git clone https://github.com/creationix/nvm.git $HOME/.nvm && git checkout `git describe --addrev=0 --tags`
source $HOME/.nvm/nvm.sh

nvm install v0.10


