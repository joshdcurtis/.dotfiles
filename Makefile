init:
	@make vim

vim:
	@ln -sf `pwd`/vimfiles/vimrc ~/.vimrc
	@echo "Installed .vimrc, now installing packages..."
	@vim +PlugInstall +PlugUpdate +qall
	@echo "All vim packages installed."
