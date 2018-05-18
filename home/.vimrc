set nocompatible
syntax on
set nowrap
set encoding=UTF8

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle, required
Plugin 'gmarik/Vundle.vim'

if (has('nvim'))
  Plugin 'Shougo/deoplete.nvim'
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

" utility
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'MattesGroeger/vim-bookmarks'

" generic coding
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'w0rp/ale'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'

" Theme / Interface
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'
Plugin 'skielbasa/vim-material-monokai'

" typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'mhartington/nvim-typescript'

" ios
Plugin 'eraserhd/vim-ios'
Plugin 'keith/swift.vim'

" python
Plugin 'davidhalter/jedi-vim'
Plugin 'zchee/deoplete-jedi'

set backspace=indent,eol,start

call vundle#end()
filetype plugin indent on

set number
set ruler
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set laststatus=2
set cursorline
set lazyredraw
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
set scrolloff=10
set updatetime=1000
set clipboard=unnamed
set relativenumber
set hidden
set switchbuf=useopen
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set nobackup
set nowb
set noswapfile
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

if (has("gui_macvim"))
  autocmd GUIEnter * set vb t_vb=
endif

" ligatures
if (has("gui_running"))
  set macligatures
  set guifont=FuraCode\ Nerd\ Font:h14
endif

if (executable("ag"))
  set grepprg=ag\ --nogroup\ --nocolor
endif

colorscheme molokai

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

"""""""""""""""""""""""""""""""""""""
" Mappings config
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <F24> :ALEFindReferences<CR> 
map <F12> :ALEGoToDefinition<CR>
map <C-i> :ALEHover<CR>
map <F8> :TagbarToggle<CR>
map <leader>r :BTags<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>gb :Gblame<CR>
nnoremap <C-x> d
vnoremap <C-x> d
nnoremap d "_d
vnoremap d "_d

" typescript mappings
augroup typescript
  autocmd!
  autocmd FileType typescript map <F12> :TSTypeDef<CR>
  autocmd FileType typescript map <F24> :TSRefs<CR>
  autocmd FileType typescript map <C-i> :TSType<CR>
  autocmd FileType typescript map <leader>i :TSImport<CR>
  autocmd FileType typescript map <F2> :TSRename<CR>
augroup END

" Omnicomplete Better Nav
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Mapping selecting Mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Shortcuts
nnoremap <Leader>o :Files<CR>
nnoremap <Leader>O :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap B ^
nnoremap E $
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <C-r> :BLines<CR>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
 
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

