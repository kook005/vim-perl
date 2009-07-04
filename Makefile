default:
	@echo There is no default target.

dirs:
	mkdir -p ~/.vim/ftplugin
	mkdir -p ~/.vim/syntax
	mkdir -p ~/.vim/indent


install: dirs
	cp ftplugin/perl6.vim ~/.vim/ftplugin
	cp syntax/perl.vim ~/.vim/syntax
	cp syntax/perl6.vim ~/.vim/syntax
	cp indent/perl.vim ~/.vim/indent
	cp indent/perl6.vim ~/.vim/indent

symlinks: dirs
	ln -sf $(PWD)/ftplugin/perl6.vim ~/.vim/ftplugin
	ln -sf $(PWD)/syntax/perl.vim ~/.vim/syntax
	ln -sf $(PWD)/syntax/perl6.vim ~/.vim/syntax
	ln -sf $(PWD)/indent/perl.vim ~/.vim/indent
	ln -sf $(PWD)/indent/perl6.vim ~/.vim/indent