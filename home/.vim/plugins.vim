call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

if (!has('nvim'))
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" utility
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'thaerkh/vim-workspace'
Plug 'easymotion/vim-easymotion'

" generic coding
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'kien/rainbow_parentheses.vim'
Plug 'metakirby5/codi.vim'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'neomake/neomake'

" Markdown / Writting
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'

" Theme / Interface
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'skielbasa/vim-material-monokai'
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'

" typescript /js
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'

" ios
Plug 'eraserhd/vim-ios'
Plug 'keith/swift.vim'

" python
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

call plug#end()

