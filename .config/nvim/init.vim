" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugins/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
"This is a linter for python
Plug 'metakirby5/codi.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tomlion/vim-solidity'
" Initialize plugin system
call plug#end()

colorscheme gruvbox
"colors:
syntax on

"Remaps:
"remap the leader to space
"let mapleader = " "
"jk in insert mode takes you back to normal mode
inoremap jk <ESC>
"Ctrl-s saves
nmap <C-s> :w<CR>
"++ in vmap or nmap coments
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
"Vex
nnoremap <leader>v :Vex<CR>
nnoremap <leader>h :Sex<CR>

function! Grepper()
    call inputsave()
    let replacement = input('RegExp: ')
    let workdir = input('Directory: ')
    call inputrestore()
    execute 'grep! -Irn '.replacement.' '.workdir
endfunction
nnoremap <silent> <leader>gg  :call Grepper()<CR>:copen<CR>



" this is an auto changer for relative numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
