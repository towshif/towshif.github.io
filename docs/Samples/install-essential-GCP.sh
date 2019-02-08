# This script is written for GSP cloud shell for setting up default env for work.


sudo apt update

# install zsh tree
sudo apt install zsh tree

# install oh-my-zsh with defailt agnosted theme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# update vimrc for formatting/ code highlighting
curl -fsSL https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim > ~/.vimrc

# update bashrc with new aliases 
curl -fsSL https://gist.githubusercontent.com/towshif/bba124a507d1f7513118977c7dd591ae/raw/22f26f731f0349c2b0fcd170dc33eca93e3c561e/bash-aliases.sh >> ~/.bashrc


# install mkdocs - documentation engine
pip install mkdocs pymdown-extensions mkdocs-material pygments --user