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
set noshowmode
set showtabline=2
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

autocmd BufNewFile,BufRead *.vim setf vim 

let g:loaded_matchparen = 1

