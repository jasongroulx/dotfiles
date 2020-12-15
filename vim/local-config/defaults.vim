" ------------------------------------------------------------------------------
" # Defaults
" ------------------------------------------------------------------------------

" Yeah, it's a package, but it comes with vim
packadd! matchit

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set relativenumber
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
set showmatch             " highlight matching [{()}]
set spell
set autowriteall          " automatically write file when switching buffers.
set complete=.,w,b,u      " Set our desired autocompletion matching.
"No damn bells!
set noerrorbells visualbell t_vb=

set hlsearch
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.

" Add spell checking and automatic wrapping at the recommended 72 columns to you commit messages.
autocmd Filetype gitcommit setlocal spell textwidth=72

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Map leader key to , instead of the default \
let mapleader = "\<Space>"

set clipboard=unnamed


" ------------------------------------------------------------------------------
" # Visuals
" ------------------------------------------------------------------------------
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

" Flip colorscheme
nmap <Leader>dt :set background=dark<cr>
nmap <Leader>lt :set background=light<cr>


" ------------------------------------------------------------------------------
" # Split Management
" ------------------------------------------------------------------------------
set splitbelow
set splitright
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

" Causes each of the arrow keys to execute no operation,
" or in other words: it disables them.
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
