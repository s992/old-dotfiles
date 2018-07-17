set nocompatible
syntax on
set nowrap
set encoding=UTF8

if has('python3')
  silent! python3 1
end

source ~/vimrc/plugins.vim
source ~/vimrc/settings.vim
source ~/vimrc/plugin-config.vim
source ~/vimrc/bindings.vim

