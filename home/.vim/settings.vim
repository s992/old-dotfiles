filetype off
filetype plugin indent on

set backspace=indent,eol,start
set number
set ruler
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set laststatus=2
set cursorline
set lazyredraw
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
set noshowmode
set showtabline=2
set noerrorbells
set novisualbell
set guioptions=
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

let g:loaded_matchparen = 1

if has('nvim')
  let g:terminal_color_0  = '#151515'
  let g:terminal_color_1  = '#bc5653'
  let g:terminal_color_2  = '#909d63'
  let g:terminal_color_3  = '#ebc17a'
  let g:terminal_color_4  = '#6a8799'
  let g:terminal_color_5  = '#b06698'
  let g:terminal_color_6  = '#c9dfff'
  let g:terminal_color_7  = '#d9d9d9'
  let g:terminal_color_8  = '#636363'
  let g:terminal_color_9  = '#bc5653'
  let g:terminal_color_10 = '#a0ac77'
  let g:terminal_color_11 = '#ebc17a'
  let g:terminal_color_12 = '#7eaac7'
  let g:terminal_color_13 = '#b06698'
  let g:terminal_color_14 = '#acbbd0'
  let g:terminal_color_15 = '#f7f7f7'
endif

augroup quickfix
  autocmd!
  autocmd FileType qf setlocal wrap
augroup END

