cp .vimrc ~/.vimrc && mkdir ~/.vim/ && cp -r plugin ~/.vim/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo "Done!"
