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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'thaerkh/vim-workspace'
Plugin 'easymotion/vim-easymotion'

" generic coding
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'metakirby5/codi.vim'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'

" Theme / Interface
Plugin 'ryanoasis/vim-devicons'
" Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'itchyny/lightline.vim'
Plugin 'mgee/lightline-bufferline'

" typescript
Plugin 'leafgarland/typescript-vim'
" Plugin 'mhartington/nvim-typescript'

" ios
Plugin 'eraserhd/vim-ios'
Plugin 'keith/swift.vim'

" python
Plugin 'davidhalter/jedi-vim'
Plugin 'zchee/deoplete-jedi'

call vundle#end()

