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

" neomake
call neomake#configure#automake('nrwi', 500)

" deoplete
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/Users/seanwalsh/virtualenvs/nvim/bin/python'
let g:python3_host_prog = '/Users/seanwalsh/virtualenvs/nvim3/bin/python'

" language server
let g:LanguageClient_serverCommands = {
      \'typescript': ['javascript-typescript-stdio'],
      \'typescript.jsx': ['javascript-typescript-stdio'],
      \'javascript': ['javascript-typescript-stdio'],
      \'javascript.jsx': ['javascript-typescript-stdio'],
      \'reason': ['ocaml-language-server', '--stdio'],
      \'ocaml': ['ocaml-language-server', '--stdio'],
      \}

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
let g:fzf_layout = { 'window': 'enew' }

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

" ctrlp.vim
let g:ctrlp_use_caching = 0
let g:ctrlp_max_files = 10000
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_user_command = 'ag %s -l -i --nogroup --nocolor --hidden -g ""'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_switch_buffer = 0

" jedi
let g:jedi#goto_command = "<F12>"
let g:jedi#usages_command = "<F24>"
let g:jedi#documentation_command = "<C-i>"

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

