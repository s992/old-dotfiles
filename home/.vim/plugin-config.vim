"""""""""""""""""""""""""""""""""""""
" Plugin Config
"""""""""""""""""""""""""""""""""""""

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='materialmonokai'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1

" Ale Configuration
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\ 'typescript': ['tslint'],
\}

" deoplete stuff
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/Users/seanwalsh/virtualenvs/nvim/bin/python'
let g:python3_host_prog = '/Users/seanwalsh/virtualenvs/nvim3/bin/python'

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

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

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

" Tagbar
"let g:tagbar_type_typescript = {
"\  'ctagsbin': 'ctags',
"\  'ctagsargs': '',
"\  'kinds': [
"\   'C:classes:0:1',
"\   'c:modules:0:1',
"\   'n:modules:0:1',
"\   'f:functions:0:1',
"\   'V:variables:0:1',
"\   'v:varlambdas:0:1',
"\   'm:members:0:1',
"\   'i:interfaces:0:1',
"\   't:types:0:1',
"\   'e:enums:0:1',
"\   'I:imports:0:1',
"\   'M:methods:0:1',
"\  ],
"\  'sort': 0,
"\}

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

