execute pathogen#infect()

" Pep8 stuff
"autocmd FileType python map <buffer> <F3> :call Pep8()<CR> 
let g:pep8_map='<F8>'

syntax on
filetype plugin on
source ~/.vim/plugin/matchit.vim
set expandtab
set shiftwidth=4
set softtabstop=4
set nu
set wildignore+=*.pyc
set foldmethod=indent
set foldnestmax=2
set foldlevelstart=20
set splitbelow
set splitright

let mapleader=','
"nmap ZX <ESC>:w<CR>
"nnoremap <space> dd
"nnoremap <leader>d dd
"nnoremap <leader><leader> <C-^>
noremap <leader><leader>v <C-w>v
noremap <leader><leader>s <C-w>s
noremap <leader><leader>o <C-w>o
noremap <leader><leader>a <C-^>

noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

noremap <leader>t :CommandTFlush<cr>\|:CommandT<cr>

"map <leader>gt :CommandTFlush<cr>\|:CommandT functional_tests/<cr>
"map <leader>gr :CommandTFlush<cr>\|:CommandT tdd/<cr>
"cnoremap %% <C-R>=expand('%:h').'/'<cr>

"map <leader>e :edit %%
"map <leader>v :view %%

"cnoremap %% <C-R>=expand('%:h').'/'<cr>
"map <leader>e :edit %%
"map <leader>v :view %%

nnoremap <leader><leader> <c-^>



" trying out some new mappings
noremap <space> viw
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap jk <esc>
vnoremap jk <esc>

" operator mappings
onoremap p i(
" onoremap b /return<cr>

" remap esc to no op
inoremap <esc> <nop>

augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END


" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
