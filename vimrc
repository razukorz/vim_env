"created by razukorz for personal use based on various online guides
"razukorz: humanoid from Equestria :)

"disable vi
set nocompatible

filetype off

"Vundle path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--- Vundle ---
Plugin 'gmarik/Vundle.vim'

"--- colorschemes and themes ---
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"--- treeviews ---
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"--- syntax error check ---
Plugin 'scrooloose/syntastic'

"--- easytags see program structure and more ---
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

"--- fuzzy finding thing ---
Plugin 'ctrlpvim/ctrlp.vim'

"--- a.vim: to open corresponding header or src file ---
Plugin 'vim-scripts/a.vim'

"--- git features ---
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

"--- automatic closing for quote, bracket, etc. ---
Plugin 'Raimondi/delimitMate'

"automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'

"--- tmux-like navigator ---
Plugin 'christoomey/vim-tmux-navigator'

"--- syntax highlighting ---
Plugin 'sheerun/vim-polyglot'

"this add strip to trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

"--- other text editting ---

"easily surround chunks of text
Plugin 'tpope/vim-surround'
"align CSV files at commas, align Markdown tables, and more
Plugin 'godlygeek/tabular'

"--- autocompletion ---
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

"--- general settings ---
"set utf-8 env
set enc=utf-8
set fenc=utf-8
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set autoindent
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set smartindent
set textwidth=120

syntax on

set mouse=a

"--- plugin settings ---

"--- colorschemes ---

"terminal 256 color
set t_Co=256

"monokai by crusoexia
colorscheme monokai
let g:monokai_term_italic = 1

"--- vim-airline ---

"always show status bar
set laststatus=2
"show PASTE in in paste mode
let g:aireline_detect_paste=1
"show airline for tabs
let g:airline#extensions#tabline#enabled=1
"show buffer numbers in tabline
let g:airline#extensions#tabline#buffer_nr_show=1

"--- nerdtree and related ---

"toggle nerdtree on/off using \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
"to have nerdtree on startup or not
let g:nerdtree_tabs_open_on_console_startup=0

"--- syntastic settings ---

"error and warning symbols
let g:syntastic_error_symbol="✘"
let g:syntastic_warning_symbol="▲"
augroup mySyntastic
	au!
	au FileType tex let b:syntastic_mode = "passive"
augroup END

"some recommended setting on syntastic github page
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"--- easytags settings ---

"ctags-exuberant required
"where to look for tags files
set tags=./tags
set tags=~/.vimtags

"sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"--- tagbar settings ---

"set ctag path
let g:tagbar_ctags_bin='/usr/bin/ctags'
"open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

"--- ctrlp fuzzy finding ---

"Ctrl+P in normal mode to begin
"Enter to open file, Ctrl+T to open file in new tab

"--- git-gutter git features ---

"required after having changed the colorscheme
"hi clear SignColumn
"in vim-airline, only display "hunks" if the diff is non-zero or not
let g:airline#extensions#hunks#non_zero_only = 1
"see help for more command and features

"--- git-fugitive ---

"see its github page for more command
":Gwrite == add
":Gread == checkout
":Gremove == rm // remove file
":Gmove == rm // rename file

" ----- Raimondi/delimitMate settings -----

let delimitMate_expand_cr = 1
augroup mydelimitMate
	au!
	au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
	au FileType tex let b:delimitMate_quotes = ""
	au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
	au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"--- tmux-navigator ---

"Ctrl + h,j,k,l,\  to different splits

"--- YouCompleteMe ---

"global configuration file defined, supress a warning of YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"disable YCM completer;
"somehow YCM C completer conflicts with Synastic;
let g:ycm_show_diagnostics_ui = 0

"python semantic support
let g:ycm_server_python_interpreter = '/usr/bin/python2'
