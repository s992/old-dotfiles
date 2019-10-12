"""""""""""""""""""""""""""""""""""""
" Plugin Config
"""""""""""""""""""""""""""""""""""""

" lightline config
let g:lightline#bufferline#show_number = 0
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed = '[No Name]'

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}
let g:lightline.component_function = {'cocstatus': 'coc#status', 'session': 'session#statusline'}
let g:lightline.active = {'left': [['mode', 'cocstatus', 'filename', 'session']]}

" prettier
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0

" Markdown Syntax Support
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Settings for Writing
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

" Vim-pencil Configuration
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Fzf Configuration
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Supertab
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" fzf/simple-session, stolen from ctrl-p extension
function! s:fzf_get_sessions()
  let l:sessions = session#list()
  if exists("v:this_session")
    let l:sessions = filter(l:sessions, "v:val != '".v:this_session."'")
  endif
  return l:sessions
endfunction

function! s:fzf_select_session(line)
  call session#switch(a:line)
endfunction

command! FZFSessions call fzf#run({ 'source': s:fzf_get_sessions(), 'sink': function('s:fzf_select_session'), 'down': '~40%' })

" fzf command palette
function! s:fzf_select_palette(line)
  if a:line == 'Copy relative path'
    execute 'let @+ = expand("%")'
  elseif a:line == 'Copy absolute path'
    execute 'let @+ = expand("%:p")'
  elseif a:line == 'Close tab'
    execute 'tabclose'
  elseif a:line == 'CoC Palette'
    execute 'CocCommand'
  else
    echo a:line
    echoerr 'didnt work?'
  endif
endfunction

command! FZFPalette call fzf#run({ 'source': ['Copy relative path', 'Copy absolute path', 'Close tab', 'CoC Palette'], 'sink': function('s:fzf_select_palette'), 'up': '~40%' })
