""""""""""""""""""""""""""""""""""""""""""""
" Plugins 
"""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'puremourning/vimspector'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/goyo.vim'
    Plug 'mboughaba/i3config.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'morhetz/gruvbox'
    Plug 'https://github.com/ap/vim-css-color'
    Plug 'bling/vim-bufferline'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'puremourning/vimspector'
    Plug 'junegunn/fzf.vim'
    Plug 'jiangmiao/auto-pairs'
call plug#end()
let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""
" Configs Loader 
"""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/coc.vim

"""""""""""""""""""""""""""""""""""""""""""""
" My Mappings 
"""""""""""""""""""""""""""""""""""""""""""""
"Focus
map <F12> :Goyo <CR>
map <F4> :Format <CR>
"splits
nnoremap <A-h> :vertical resize -3 <CR>
nnoremap <A-l> :vertical resize +3 <CR>
nnoremap <A-k> :resize +3 <CR>
nnoremap <A-j> :resize -3 <CR>
"Buffers
"nnoremap <leader>s :bn<CR>
"nnoremap <leader>a :bp<CR>
"nnoremap <leader>z :bd<CR>
"FZF
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Files<CR>
"File explorer
nnoremap <C-e> :CocCommand explorer<CR>
tnoremap <Esc> <C-\><C-n>
"Basic
imap jj <Esc>
"""""""""""""""""""""""""""""""""""""""""""""
" My Configs 
"""""""""""""""""""""""""""""""""""""""""""""
" vimspector keybinding 
let g:vimspector_enable_mappings = 'HUMAN'
set spell spelllang=es
set nospell
set clipboard+=unnamedplus
set number
set mouse=a " mouse on visual mode
set tabstop=4 
set shiftwidth=4 
set expandtab
set relativenumber
"AutoClosingBrakets&Others
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

"""""""""""""""""""""""""""""""""""""""""""""
" Theme 
"""""""""""""""""""""""""""""""""""""""""""""
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

