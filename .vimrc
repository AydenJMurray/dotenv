"install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif
"Plugin installation
call plug#begin('~/.vim/plugged')

"Theme
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'

" Auto-brackets
Plug 'jiangmiao/auto-pairs'

call plug#end()


set number	"Set line numbers

"Enable Solarized Theme
syntax enable
set background=dark

if has("patch-8.4-1799" || has("nvim"))
  set termguicolors
  colorscheme solarized8
else
  colorscheme solarized
endif

let mapleader ="\<Space>"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <leader>cc /**/<C-C>hi
                  
"Optional Colorscheme
"colorscheme darkblue
"au InsertLeave * colorscheme darkblue 
"au InsertEnter * colorscheme molokai

set backspace=indent,eol,start
  
"tabstuff
set tabstop=2 expandtab shiftwidth=4

"Mouse support
set mouse=a

set title
set ruler
set showmatch



