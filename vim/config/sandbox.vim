function! Maps(search, leader)
  let search = a:leader ? '<Leader>' . a:search : a:search
  execute 'verbose map' search
endfunction

command! -bang -nargs=1 Maps call Maps(<q-args>, <bang>0)

highlight LspDiagnosticsDefaultError ctermfg=red
highlight LspDiagnosticsDefaultWarning ctermfg=magenta
highlight LspDiagnosticsDefaultInformation ctermfg=yellow
highlight LspDiagnosticsDefaultHint ctermfg=blue


