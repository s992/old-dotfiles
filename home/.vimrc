set nocompatible
syntax on
set nowrap
set encoding=UTF8

let g:python_host_prog = '/Users/seanwalsh/virtualenvs/nvim/bin/python'
let g:python3_host_prog = '/Users/seanwalsh/virtualenvs/nvim3/bin/python'

if has('python3')
  silent! python3 1
end

source ~/vimrc/plugins.vim
source ~/vimrc/settings.vim
source ~/vimrc/plugin-config.vim
source ~/vimrc/bindings.vim

