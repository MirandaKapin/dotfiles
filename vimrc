set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here (note older versions of Vundle used Bundle instead of Plugin)
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold' " Simpyl Fold properly fold the text
Plugin 'vim-scripts/indentpython.vim' " Indention Plugin for Python
Plugin 'scrooloose/syntastic' " Syntax extension (multiple computer languages)
Plugin 'nvie/vim-flake8' " PEP 8 Checking
Plugin 'scrooloose/nerdtree' " Proper File Tree (NERDTree)
Plugin 'jistr/vim-nerdtree-tabs' " Tabs with NERDTree
Plugin 'kien/ctrlp.vim' " Super Searching
Plugin 'tpope/vim-fugitive' " Git Integration
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} " Powerline Status bar

" End Plugins
call vundle#end()            " required
filetype plugin indent on    " required


" Turn on Line Numbering
set nu


" Setting the Colorscheme
colorscheme murphy


" Hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Change mapleader from \ to spacebar
map <Space> <nop>
let mapleader="\<Space>"


" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" FOLDING
" Enable folding
set foldmethod=indent
set foldlevel=99
" Viewing Docstrings of Folded Code
let g:SimpylFold_docstring_preview=1


" INDENTATION
" PEP8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" Indentation for Javascript, HTML, and CSS Files
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" HILIGHTING 
" Python Highlighting
let python_highlight_all=1
syntax on


" Flagging unnecessary whitespace for python, c, and h
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Character Encoding UTF-8
set encoding=utf-8


" Auto-complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Add a new line with Enter
nmap <CR> o<Esc>






