set nocompatible

execute pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on
"source ~/.vim/plugin/matchit.vim

let mapleader=','

" ---------------------------------
" Global settings
" ---------------------------------
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
set backspace=indent,eol,start
set nostartofline    " keep cursor in same column for long-range motion cmds
set incsearch        " Highlight pattern matches as you type
set ignorecase       " ignore case when using a search pattern
set smartcase        " override 'ignorecase' when there's an uppercase char

" Mouse seems to interfere with other things, pasting
"if has('mouse')
  "set mouse=a
"endif

" Quick Paste
nnoremap <leader>p :r! cat<cr>
nnoremap <F2> :set invpaste<cr>

"nnoremap <leader><leader> <C-^>
nnoremap <leader>q @@

" Change vsplit and split to open new buffers
"noremap <leader><leader>v <C-w>v
noremap <leader><leader>v :vnew<cr>
"noremap <leader><leader>s <C-w>s
noremap <leader><leader>s :new<cr>
noremap <leader><leader>o <C-w>o
noremap <leader><leader>a <C-^>

" Window Movements
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-x> <C-w>x
" Removing ZoomWin because it's conflicting with flake8
" noremap <C-m> <Plug>ZoomWin

" Tabs
noremap <C-t> :tabnew<cr>
noremap <C-p> :tabprev<cr>
noremap <C-n> :tabnext<cr>

" Quick sudo write
cmap w!! w !sudo tee > /dev/null %


"""""""""""""""""""""""""""""""""""""""
" Command T
"""""""""""""""""""""""""""""""""""""""
" Plugin specific stuff
" noremap <leader>t :CommandTFlush<cr>\|:CommandT<cr>

"map <leader>gt :CommandTFlush<cr>\|:CommandT functional_tests/<cr>
"map <leader>gr :CommandTFlush<cr>\|:CommandT tdd/<cr>
"cnoremap %% <C-R>=expand('%:h').'/'<cr>

"""""""""""""""""""""""""""""""""""""""
" CTRL P (replacing Command T)
"""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'

"map <leader>e :edit %%
"map <leader>v :view %%

"cnoremap %% <C-R>=expand('%:h').'/'<cr>
"map <leader>e :edit %%
"map <leader>v :view %%

" trying out some new mappings
vnoremap " <esc>`>a"<esc> `<i"<esc>
vnoremap ' <esc>`>a'<esc> `<i'<esc>
noremap <space> viw
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap ;j <esc>
vnoremap ;j <esc>
snoremap ;j <esc>
" remap esc to no op
inoremap <esc> <nop>

" Surround stuff in quotes
vnoremap <Leader>""" <esc>`>a<cr>"""<esc>`<^i"""<cr><esc>
vnoremap <Leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <Leader>' <esc>`>a'<esc>`<i'<esc>

" Delete stuff in quotes
nnoremap <Leader><Leader>""" :/"""<cr>:.g/"""/d<cr>N:.g/"""/d<cr>


" Quickly open files for viewing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>op :vsplit ~/.vim/bundle/vim-snippets/snippets/python.snippets<cr>
nnoremap <leader>oh :vsplit ~/.vim/bundle/vim-snippets/snippets/html.snippets<cr>

" Grep files (commented out due to conflict)
" nnoremap <leader>g :silent execute "grep! -IR " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" operator mappings
onoremap p i(

augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

" autocmd BufRead,BufNewFile *.html let g:loaded_youcompleteme = 0
" let g:loaded_youcompleteme = 0

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


"""""""""""""""""""""""""""""""""""""""
" NERDTREE
"""""""""""""""""""""""""""""""""""""""
noremap <leader>n :NERDTreeToggle<cr>

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

" NERDTree Ignores
let NERDTreeIgnore = ['\.pyc$',
                       \ '\.ods$',
                       \ '\.pdf$',
                       \ ]



"""""""""""""""""""""""""""""""""""""""
" EasyMotion
"""""""""""""""""""""""""""""""""""""""

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


"""""""""""""""""""""""""""""""""""""""
" Flake8
"""""""""""""""""""""""""""""""""""""""
" autocmd BufWritePost *.py call Flake8()
let g:flake8_show_in_gutter=1
autocmd FileType python map <buffer> <F8> :call Flake8()<CR>


"""""""""""""""""""""""""""""""""""""""
" YCM
"""""""""""""""""""""""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>d  :YcmCompleter GetDoc<CR>
" Other possible calls:
" GoToDefinition
" GoToDeclaration
" GoTo
" GetDoc

" Turn off YCM if we're working with HTML files

" This wasn't working for me...
" let g:ycm_filetype_blacklist = { 'html': 1 }

" Workaround because I couldn't get the whitelist/blacklist to work
let g:ycm_filetype_disable = ['css', 'html']
for i in g:ycm_filetype_disable
    if (expand('%:e') ==? i)
        let g:loaded_youcompleteme=1
    endif
endfor

function! SaveVimrc()
    " Get the bytecode.
    echom @%
    echom "Hello world"
    echo expand('%:p')
    !ls

    " Open a new split and set it up.

    " Insert the bytecode.

endfunction

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
