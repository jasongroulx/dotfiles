" ------------------------------------------------------------------------------
" # Sourcing
" ------------------------------------------------------------------------------

let g:sourcery#vim_dotfiles_path = exists('$VIMDOTFILES') ? $VIMDOTFILES : '~/.dotfiles/vim'
let g:sourcery#system_vimfiles_path = exists('$VIMFILES') ? $VIMFILES : '~/.config/nvim'

" This tells Vim to use our custom `jason-vim-install` path as our first runtime path, instead of .vim
execute 'set runtimepath='.g:sourcery#system_vimfiles_path

" Source plugins
call plug#begin(g:sourcery#system_vimfiles_path . '/plugged')
  execute 'source ' . g:sourcery#vim_dotfiles_path . '/plugins.vim'
call plug#end()

" Source everything else
call sourcery#init()

