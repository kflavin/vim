set nocompatible

execute pathogen#infect()

" allows incsearch highlighting for range commands
" cnoremap $t <CR>:t''<CR>
" cnoremap $T <CR>:T''<CR>
" cnoremap $m <CR>:m''<CR>
" cnoremap $M <CR>:M''<CR>
" cnoremap $d <CR>:d<CR>``

" flake8 config
let g:flake8_ignore="E501,W293"

syntax on
filetype plugin on
source ~/.vim/plugin/matchit.vim

set expandtab
set shiftwidth=4
set softtabstop=4
set nu
set wildignore+=*.pyc,*.pdf
set foldmethod=indent
set foldnestmax=2
set foldlevelstart=20
set splitbelow
set splitright
set incsearch hlsearch
set autoindent
"if has('mouse')
  "set mouse=a
"endif
set backspace=indent,eol,start

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.  Don't
  " do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent                " always set autoindenting on

endif " has("autocmd")

let mapleader=','
"nmap ZX <ESC>:w<CR>
"nnoremap <space> dd
"nnoremap <leader>d dd
"nnoremap <leader><leader> <C-^>
noremap <leader><leader>v <C-w>v
noremap <leader><leader>s <C-w>s
noremap <leader><leader>o <C-w>o
noremap <leader><leader>a <C-^>

" Window Movements
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-x> <C-w>x
map <C-m> <Plug>ZoomWin

" Tabs
noremap <C-t> :tabnew<cr>
noremap <C-p> :tabprev<cr>
noremap <C-n> :tabnext<cr>

" Plugin specific stuff
noremap <leader>t :CommandTFlush<cr>\|:CommandT<cr>
noremap <leader>n :NERDTreeToggle<cr>

"map <leader>gt :CommandTFlush<cr>\|:CommandT functional_tests/<cr>
"map <leader>gr :CommandTFlush<cr>\|:CommandT tdd/<cr>
"cnoremap %% <C-R>=expand('%:h').'/'<cr>

"map <leader>e :edit %%
"map <leader>v :view %%

"cnoremap %% <C-R>=expand('%:h').'/'<cr>
"map <leader>e :edit %%
"map <leader>v :view %%

" trying out some new mappings
noremap <space> viw
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap jk <esc>
vnoremap jk <esc>
snoremap jk <esc>

" Quickly open files for viewing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>op :vsplit ~/.vim/bundle/vim-snippets/snippets/python.snippets<cr>
nnoremap <leader>oh :vsplit ~/.vim/bundle/vim-snippets/snippets/html.snippets<cr>

" Grep files
nnoremap <leader>g :silent execute "grep! -IR " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

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


" NERDTress File highlighting
 function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
   exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'.  a:extension .'$#'
endfunction

   call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
   call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
   call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
   call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
   call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
   call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
   call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
   call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
   call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
   call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
   call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
   call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
   call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')


" Easy Motion configuration

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1 

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" NERDTree Ignores
let NERDTreeIgnore = ['\.pyc$',
                       \ '\.ods$',
                       \ '\.pdf$',
                       \ ]
