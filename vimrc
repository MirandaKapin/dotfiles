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
Plugin 'pangloss/vim-javascript' " Vim Javascript formatting
Plugin 'mxw/vim-jsx' " JSX formatting
Plugin 'docunext/closetag.vim' " HTML and CSS closing tags
Plugin 'raimondi/delimitmate' " Auto-completion for quotes, parens, brackets, etc...
Plugin 'flazz/vim-colorschemes' " MANY vim colorschemes

" End Plugins
call vundle#end()            " required
filetype plugin indent on    " required


" Turn on Line Numbering
set nu


" Setting the Colorscheme
colorscheme torte


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
filetype on
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.js set filetype=javascript
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
autocmd FileType markdown setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 noexpandtab
autocmd filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab


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






