#!/bin/bash

# simple vim setup script with vim8 pack manager
# see vimrc_vim_8_pack_manager file for plugin settings

# make all necessary directories
# default part can be replaced with any identifier
mkdir -p ~/.vim/pack/default/start

# monokai colorschema
git clone https://github.com/crusoexia/vim-monokai ~/.vim/pack/default/start/vim-monokai

# vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/default/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/default/start/vim-airline/doc" -c q

# vim-airline-themes
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/default/start/vim-airline-themes
vim -u NONE -c "helptags ~/.vim/pack/default/start/vim-airline-themes/doc" -c q

# nerdtree to view files
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/default/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/default/start/nerdtree/doc" -c q

# open nerdtree in a single tab
git clone https://github.com/jistr/vim-nerdtree-tabs ~/.vim/pack/default/start/vim-nerdtree-tabs
vim -u NONE -c "helptags ~/.vim/pack/default/start/vim-nerdtree-tabs/doc" -c q

# syntastic syntax checker
git clone https://github.com/vim-syntastic/syntastic ~/.vim/pack/default/start/syntastic
vim -u NONE -c "helptags ~/.vim/pack/default/start/syntastic/doc" -c q

# autocomplete most delimit symbols
git clone https://github.com/Raimondi/delimitMate ~/.vim/pack/default/start/delimitMate
vim -u NONE -c "helptags ~/.vim/pack/default/start/delimitMate/doc" -c q

# syntax highlighting
git clone https://github.com/sheerun/vim-polyglot ~/.vim/pack/default/start/vim-polyglot
vim -u NONE -c "helptags ~/.vim/pack/default/start/vim-polyglot/doc" -c q

# highlightr all tailing whitespace
git clone https://github.com/ntpeters/vim-better-whitespace ~/.vim/pack/default/start/vim-better-whitespace
vim -u NONE -c "helptags ~/.vim/pack/default/start/vim-better-whitespace/doc" -c q

# show indent lines
git clone https://github.com/Yggdroot/indentLine ~/.vim/pack/default/start/indentLine
vim -u NONE -c "helptags ~/.vim/pack/default/start/indentLine/doc" -c q
