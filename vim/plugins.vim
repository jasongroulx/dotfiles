" ------------------------------------------------------------------------------
" # Installed Plugins
" ------------------------------------------------------------------------------
" HTML/CSS expand abbreviation magic
Plug 'mattn/emmet-vim'

" Improved Javascript indentation and syntax support
Plug 'pangloss/vim-javascript'

" React JSX syntax highlighting and indenting
Plug 'mxw/vim-jsx'

" Fzf fuzzy finder
Plug '/usr/local/opt/fzf'

" Fzf vim wrapper
Plug 'junegunn/fzf.vim'

" Better ag search
Plug 'jesseleite/vim-agriculture'

" Automatic search highlight clearing
Plug 'jesseleite/vim-noh'
"
" Vim plugin to help users organize their vimrc configs
Plug 'jesseleite/vim-sourcery'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Vim syntax highlighting for Vue components.
Plug 'posva/vim-vue'
 
" Tree viewer
Plug 'lambdalisue/fern.vim'

" Autocomplete Brackets  
Plug 'jiangmiao/auto-pairs'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Better . repeating
Plug 'tpope/vim-repeat'

" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" A Vim wrapper for running tests on different granularities.
Plug 'vim-test/vim-test'

" Comment stuff out
Plug 'tpope/vim-commentary'

" PHP refactoring and introspection
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

" Find, Filter, Preview, Pick. All lua, all the time.
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" FZY style sorter that is compiled
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Completion engine
Plug 'hrsh7th/nvim-compe'

" Material colorscheme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" install UltiSnips
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Check syntax in Vim asynchronously and fix files
Plug 'w0rp/ale'
