" ------------------------------------------------------------------------------
" # Installed Plugins
" ------------------------------------------------------------------------------

" HTML/CSS expand abbreviation magic
Plug 'mattn/emmet-vim'

" Fzf fuzzy finder
Plug '/usr/local/opt/fzf'

" Fzf vim wrapper
Plug 'junegunn/fzf.vim'

" Better ag search
Plug 'jesseleite/vim-agriculture'

" Automatic search highlight clearing
Plug 'jesseleite/vim-noh'

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

" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" Tailwind CSS IntelliSense
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

" A Vim wrapper for running tests on different granularities.
Plug 'vim-test/vim-test'
