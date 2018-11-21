set nocompatible

" Added this to avoid `the imp module is deprecated` warning
" https://github.com/vim/vim/issues/3117#issuecomment-402622616
if has('python3')
  silent! python3 1
endif

set rtp+=~/.fzf
so ~/.dotfiles/.vim/plugings.vim

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set backspace=indent,eol,start
set relativenumber
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
set showcmd               " show command in bottom bar
set showmatch             " highlight matching [{()}]
set spell
set autowriteall          " automatically write file when switching buffers.
set complete=.,w,b,u      " Set our desired autocompletion matching.
"No damn bells!
set noerrorbells visualbell t_vb=

" Add spell checking and automatic wrapping at the recommended 72 columns to you commit messages.
autocmd Filetype gitcommit setlocal spell textwidth=72

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

" Map leader key to , instead of the default \
let mapleader = "\<Space>"

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

"-------------------Search-----------------------------------------------------"
set hlsearch
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.

"-------------------Split Management-------------------------------------------"
set splitbelow
set splitright
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

"-------------------Mappings---------------------------------------------------"
" Toggle the Tagbar window
nmap <Leader>= :TagbarToggle<CR>

" Clear search highlight
nmap <Leader><space> :nohlsearch<cr>

" Flip colorscheme
nmap <Leader>dt :set background=dark<cr>
nmap <Leader>lt :set background=light<cr>

" Make NERDTree easier to toggle.
nmap <Leader>1 :NERDTreeToggle<cr>
" synchronize NERDTree with current opened tab file path
map <leader>1s :NERDTreeFind<cr>

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

"-------------------Plugings---------------------------------------------------"
" ALE (Asynchronous Lint Engine)
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['yapf'],
\}

"/
"/ vim-snippets
"/
let g:ultisnips_python_style = "google"

"/
"/ vim-easy-align
"/
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap <Leader><Leader>a :EasyAlignFileOnRegex<Space>
let g:easy_align_ignore_groups = []
function! EasyAlignFileOnRegex(regex)
    execute '%EasyAlign /' . a:regex . '/'
endfunction
command! -nargs=1 EasyAlignFileOnRegex call EasyAlignFileOnRegex(<q-args>)

"/
"/ Limelight
"/
augroup goyo_events
  autocmd!
  autocmd User GoyoEnter nested call <SID>goyo_enter()
  autocmd User GoyoLeave nested call <SID>goyo_leave()
augroup END
if !exists("*s:goyo_enter")
  function! s:goyo_enter()
    nnoremap j gj
    nnoremap k gk
    Limelight
  endfunction
endif
if !exists("*s:goyo_leave")
  function! s:goyo_leave()
    nunmap j
    nunmap k
    Limelight!
    so $MYVIMRC
  endfunction
endif
let g:limelight_conceal_ctermfg = 'black'


"/
"/ FZF
"/
map <C-p> :Ag<CR>


"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0


"/
"/ Greplace
"/
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'


"/
"/ Vim-php-cs-fixer
"/
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>pfd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>


"/
"/ PDV - PHP Documentor
"/
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>


"/
"/ UltiSnips
"/
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"-------------------Auto-Commands----------------------------------------------"
" every time a Vue file is opened update syntax highlighting
autocmd FileType vue syntax sync fromstart

" Automatically removing all trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

" Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
    autocmd BufWritePost plugings.vim source $MYVIMRC
augroup END
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

" autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

" autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

" Go to Laravel blade partial
nnoremap <leader>lp :call GoToPartial()<CR>
function! GoToPartial()
  normal "lyi'
  let partial = @l
  let file = substitute(partial, "\\.", "/", "g")
  execute " edit resources/views/" . file . ".blade.php"
endfunction
