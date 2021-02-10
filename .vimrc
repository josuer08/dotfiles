set nocompatible "its just because if i share it it might be useful
syntax on
set timeout timeoutlen=2000
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set termguicolors
set number
set relativenumber
set ignorecase
set smartcase
set exrc
set nohlsearch
set incsearch
set hidden
set noerrorbells
set scrolloff=8
set cmdheight=2
set updatetime=300
set shortmess+=c
"FOR FINDING FILES:
"a better way to find everything that is in my actual subfolder or bellow
set path+=**
set wildmenu
"una nota importante es que podemos simplemente usar ":b nombre" para
"cambiar entre los buffers que tenemos abiertos, los que podemos ver
"con el comando ":ls" que nos deja ver todos los buffer

"REMAPS:
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
inoremap jk <ESC>
nnoremap <C-s> :w<CR>
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <leader>v :Vex<CR>
nnoremap <leader>h :Sex<CR>
"searcher function
function! Grepper()
    call inputsave()
    let replacement = input('RegExp: ')
    let workdir = input('Directory: ')
    call inputrestore()
    execute 'grep! -Irn '.replacement.' '.workdir
endfunction
nnoremap <silent> <leader>g  :call Grepper()<CR>:copen<CR>



" this is an auto changer for relative numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


"PARA CREAR TAGS EN UN PROYECTO:
command! MakeTags !ctags -R .
" ahora al hacer ":MakeTags" podremos hacer un tags file
" esto nos permite hacer lo siguiente:

" COMANDOS PARA TAGS:
" usar "^]" para saltar a la definicion
" usar "g^]" para tags ambiguos
" usar "^t" para devolverse en el stack
" tambien para autocompletar tenemos
" "^x^n" para algo en el archivo actual
" "^x^f" para filenames
" "^x^]" para tags
" "^n" para cosas que estan en el 'complete'


"FILE BROWSING:
let g:netrw_banner=0
"let g:netrw_browse_split=4
"let g:netrw_altv=1
"let g:netrw_liststyle=3
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_dide=',\(^\|\s\s\)\zs\.\S\+'


"My_autocmds:
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup JOSUERODRIGUEZ
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
