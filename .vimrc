

"Necessary for vundle
"
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()  

Plugin 'gmarik/Vundle.vim'

"List of general Plugins begins here
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
"Plugin 'davidhalter/jedi-vim'
"List of Plugins since go begins here
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/python-mode'

"List of Plugins ends here
call vundle#end()


filetype plugin indent on

"Settings for Syntastic
"autocmd Filetype python set omnifunc=pythonComplete#Complete
let g:syntastic_python_checkers=['flake8']
let g:syntastic_enable_signs =1
let g:syntastic_python_checker_args='--ignore=E501' 

"Settings for SuperTab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabContextDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabClosePreviewOnPopupClose = 1

"Regular Vim starts here
syntax on

set laststatus=1

set background=dark
"colorscheme solarized

"This sets the rules for tabs.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab


"Adds numbers on the left hand side of the screen
set number

"This makes the backspace key behave like a modern adult
set backspace=indent,eol,start


"This allows me to use the mouse in the few situations where I need to
set mouse=a

"These set the rules for folds.  I'm not 100% on what they do, not have I ever seen them.
set foldenable
set foldlevelstart=5

"Custom Mappings 
inoremap jk <esc>
"noremap fff :SyntasticCheck <return>
"noremap ffr :SyntasticReset <return>
nnoremap OO O <Esc>


let mapleader="-"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
set mouse=""
 
 
" Underline the current line with dashes in normal mode
nnoremap <F5> yyp<c-v>$r-
"
"Underline the current line with dashes in insert mode
inoremap <F5> <Esc>yyp<c-v>$r-A
 
 


