"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%f') !=# '' ? expand('%f') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ocamlformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:neoformat_ocaml_ocamlformat = {
"            \ 'exe': 'ocamlformat',
"            \ 'args': ['--disable-outside-detected-project']
"            \ }

let g:neoformat_enabled_ocaml = ['ocamlformat']

augroup fmt
  autocmd!
  autocmd BufWritePre *.ml,*.mli undojoin | Neoformat
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => clang-format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('mac')
  map <C-K> :py3f /usr/local/Cellar/llvm/7.0.0/share/clang/clang-format.py<cr>
  imap <C-K> <c-o>:py3f /usr/local/Cellar/llvm/7.0.0/share/clang/clang-format.py<cr>
  function! Formatonsave()
    let l:formatdiff = 1
    py3f /usr/local/Cellar/llvm/7.0.0/share/clang/clang-format.py
  endfunction
else
  map <C-K> :py3f /usr/share/clang/clang-format-7/clang-format.py<cr>
  imap <C-K> <c-o>:py3f /usr/share/clang/clang-format-7/clang-format.py<cr>
  function! Formatonsave()
    let l:formatdiff = 1
    py3f /usr/share/clang/clang-format-7/clang-format.py
  endfunction
endif
autocmd BufWritePre *.h,*.cc,*.cpp call Formatonsave()
