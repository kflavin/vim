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
map <leader><leader>v <C-w>v
map <leader><leader>s <C-w>s
map <leader><leader>o <C-w>o
map <leader><leader>a <C-^>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

map <leader>t :CommandTFlush<cr>\|:CommandT<cr>

"map <leader>gt :CommandTFlush<cr>\|:CommandT functional_tests/<cr>
"map <leader>gr :CommandTFlush<cr>\|:CommandT tdd/<cr>
"cnoremap %% <C-R>=expand('%:h').'/'<cr>

"map <leader>e :edit %%
"map <leader>v :view %%

"cnoremap %% <C-R>=expand('%:h').'/'<cr>
"map <leader>e :edit %%
"map <leader>v :view %%

nnoremap <leader><leader> <c-^>
