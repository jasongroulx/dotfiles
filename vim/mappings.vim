let mapleader = "\<Space>"


" Telescope fuzzy finders
" Mappings: telescope
nnoremap <Leader>f <Cmd>Telescope git_files<CR>
nnoremap <Leader>F <Cmd>Telescope all_files<CR>
nnoremap <Leader>b <Cmd>Telescope buffers sort_lastused=true<CR>
nnoremap <Leader>m <Cmd>Telescope git_status<CR>
nnoremap <Leader>h <Cmd>Telescope project_history<CR>
nnoremap <Leader>H <Cmd>Telescope history<CR>
" nnoremap <Leader>/ <Cmd>Telescope live_grep_raw<CR>
nnoremap <Leader>t <Cmd>Telescope current_buffer_tags<CR>
nnoremap <Leader>l <Cmd>Telescope current_buffer_lines<CR>
nnoremap <Leader>C <Cmd>Telescope commands<CR>
nnoremap <Leader>: <Cmd>Telescope command_history<CR>
nnoremap <Leader>s <Cmd>Telescope filetypes<CR>
" nnoremap <Leader> nnoremap <Leader>S <Cmd>Telescope ultisnips<CR>
nnoremap <Leader><Leader>h <Cmd>Telescope help_tags<CR>
nnoremap <Leader>v <Cmd>Telescope sourcery<CR>
nnoremap <Leader><Leader>d <Cmd>Telescope dotfiles<CR>
nnoremap <Leader><Leader>t <Cmd>Telescope<CR>

" Ag search project
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

" Mappings: lsp
nnoremap <silent> <Leader>ie <Cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> <Leader>ig <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <Leader>iv :vsplit<CR><Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <Leader>id <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <Leader>ir <Cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <Leader>ii <Cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <Cmd>lua vim.lsp.buf.hover()<CR>

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
