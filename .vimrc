set nocompatible

so ~/.dotfiles/.vim/plugings.vim

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"-------------------Visuals----------------------------------------------------"
set background=dark
colorscheme solarized
set colorcolumn=120       " display a ruler at a specific line
set t_Co=256              " enable 256-color mode.

" remove the scroll bars in macvim
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" remove gui tabs
set guioptions-=e
set linespace=15
set guifont=Monaco:h14
