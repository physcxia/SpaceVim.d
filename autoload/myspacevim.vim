function! myspacevim#before() abort
  let g:vimtex_view_method='skim'
  let g:vimtex_view_skim_sync=1
  let g:vimtex_view_skim_activate=0
  let g:vimtex_view_skim_reading_bar=1
  let g:vimtex_quickfix_mode=0
  let g:tex_conceal='abdmg'
  autocmd FileType tex setlocal redrawtime=10000 noimdisable complete-=i conceallevel=1 spell spelllang=en_us,cjk formatoptions=l
  hi Conceal ctermbg=none
  " hi SpellBad cterm=underline,bold ctermfg=red
  " hi SpellBad cterm=underline,bold
  let g:ale_linters = {'python': ['flake8', 'pylint'], 'tex': ['chktex'], 'cpp': ['clangd', 'cppcheck'], 'julia': ['languageserver']}
  let g:ale_cpp_cc_executable = 'g++'
  let g:ale_cpp_cc_options = '-std=c++17 -Wall -fopenmp'
  let g:ale_cpp_clangd_options  = '-std=c++17 -Wall -fopenmp'
  highlight ALEWarning ctermfg=DarkMagenta
  highlight ALEError ctermfg=Red
endfunction

function! myspacevim#after() abort
  inoremap jk <esc>
endfunction
