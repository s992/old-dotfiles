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

