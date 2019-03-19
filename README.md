# dotvim
vim configuration with necessary plugin

Installation:

    git clone https://github.com/leonzhang1109/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/vimpkg ~/.vimpkg

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Update all plugin

    apt-vim update -y
