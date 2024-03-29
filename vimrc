"created by razukorz for personal use based on various online guides
"razukorz: humanoid from Equestria :)

set nocompatible

filetype off

" List of Plugins
"--- colorschemes and themes ---
"crusoexia/vim-monokai
"vim-airline/vim-airline
"vim-airline/vim-airline-themes

"--- treeviews ---
"scrooloose/nerdtree
"jistr/vim-nerdtree-tabs

"--- syntax error check ---
"scrooloose/syntastic

"--- automatic closing for quote, bracket, etc. ---
"Raimondi/delimitMate

"--- syntax highlighting ---
"sheerun/vim-polyglot

"this add strip to trailing whitespace
"ntpeters/vim-better-whitespace

"--- vertical indentlines ---
"Yggdroot/indentLine

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

" ----- Raimondi/delimitMate settings -----

let delimitMate_expand_cr = 1
augroup mydelimitMate
        au!
        au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
        au FileType tex let b:delimitMate_quotes = ""
        au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
        au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" --- IndentLine: show vertical indent lines ---
let g:indentLine_conceallevel=1
let g:indentLine_color_term=220
