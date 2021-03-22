let mapleader = "\<Space>"

" Fzf fuzzy finders
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>m :GFiles?<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>h :PHistory<CR>
nmap <Leader>H :History<CR>
nmap <Leader>: :History:<CR>
nmap <Leader>M :Maps<CR>
nmap <Leader>C :Commands<CR>
nmap <Leader>' :Marks<CR>
nmap <Leader>s :Filetypes<CR>
nmap <Leader>S :Snippets<CR>
nmap <Leader><Leader>h :Helptags!<CR>

" Mappings: agriculture
nmap <Leader>/ <Plug>AgRawSearch
vmap <Leader>/ <Plug>AgRawVisualSelection
nmap <Leader>* <Plug>AgRawWordUnderCursor

" File system explorer
nmap <Leader>e :FernReveal .<CR>
nmap <Leader>E :Fern .<CR>
function! FernLocalMappings()
  nmap <buffer><nowait> l <Plug>(fern-action-expand)
  nmap <buffer><nowait> h <Plug>(fern-action-collapse)
  nmap <buffer><nowait> I <Plug>(fern-action-hidden-toggle)
  nmap <buffer><nowait> b <Plug>(fern-action-leave)
  nmap <buffer><nowait> <CR> <Plug>(fern-action-open)
  nmap <buffer><nowait> v <Plug>(fern-action-open:rightest)<C-w><C-p>
  nmap <buffer><nowait> o <Plug>(fern-action-open:system)
  nmap <buffer><nowait> f <Plug>(fern-action-new-file)
  nmap <buffer><nowait> d <Plug>(fern-action-new-dir)
  nmap <buffer><nowait> - <Plug>(fern-action-mark:toggle)
  nmap <buffer><nowait> r <Plug>(fern-action-rename)
  nmap <buffer><nowait> c <Plug>(fern-action-copy)
  nmap <buffer><nowait> m <Plug>(fern-action-move)
  nmap <buffer><nowait> y <Plug>(fern-action-clipboard-copy)
  nmap <buffer><nowait> x <Plug>(fern-action-clipboard-move)
  nmap <buffer><nowait> p <Plug>(fern-action-clipboard-paste)
  nmap <buffer><nowait> D <Plug>(fern-action-trash)
  nmap <buffer><nowait> g? <Plug>(fern-action-help:all)
endfunction

" Vim Test
nmap <Leader>rs :w<CR>:TestSuite<CR>
nmap <Leader>rf :w<CR>:TestFile<CR>
nmap <Leader>rl :w<CR>:TestLast<CR>
nmap <Leader>rn :w<CR>:TestNearest<CR>
nmap <Leader>rv :w<CR>:TestVisit<CR>

" Generic LSP intelligence
" Mappings: coc
nmap <silent> <Leader>ig <Plug>(coc-definition)
nmap <silent> <Leader>iv :vsplit<CR><Plug>(coc-definition)
nmap <silent> <Leader>it <Plug>(coc-type-definition)
inoremap <silent><expr> <C-l> coc#refresh()

" PHP intelligence
" Mappings: phpactor
autocmd FileType php nnoremap <buffer> <Leader>p :call phpactor#ContextMenu()<CR>
autocmd FileType php nnoremap <buffer> <Leader>pi :call phpactor#UseAdd()<CR>
autocmd FileType php nnoremap <buffer> <Leader>pt :call phpactor#Transform()<CR>

" Mappings: sourcery
function! SourceryMappings()
  nmap <buffer> <leader>gc <Plug>SourceryGoToRelatedConfig
  nmap <buffer> <leader>gm <Plug>SourceryGoToRelatedMappings
  nmap <buffer> <leader>gp <Plug>SourceryGoToRelatedPluginDefinition
endfunction
