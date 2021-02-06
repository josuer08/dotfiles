" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugins/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
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
"Ctrl-n activates nerd toggle
nmap <C-n> :NERDTreeToggle<CR>
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
