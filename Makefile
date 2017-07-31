init:
	@make vim

vim:
	@curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 2>/dev/null
	@ln -sf `pwd`/vimfiles/vimrc ~/.vimrc
	@echo "Installed .vimrc, now installing packages..."
	@vim +PlugInstall +PlugUpdate +qall
	@echo "All vim packages installed."
