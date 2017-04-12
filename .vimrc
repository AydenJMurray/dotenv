"install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

"Plugin installation
call plug#begin('~/.vim/plugged')

"Theme
Plug 'altercation/vim-colors-solarized'

call plug#end()


set number	"Set line numbers

"Enable Solarized Theme
syntax enable
set background=dark
colorscheme solarized

let mapleader ="\<Space>"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <leader>cc /**/<C-C>hi


"Optional Colorscheme
"colorscheme darkblue
"au InsertLeave * colorscheme darkblue 
"au InsertEnter * colorscheme molokai

"tabstuff
set tabstop=2 expandtab shiftwidth=2

"Mouse support
set mouse=a
