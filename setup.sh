# Append bashrc settings
cat $(pwd)/bashrc >> ~/.bashrc

# link dotfiles
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/gitconfig ~/.gitconfig
