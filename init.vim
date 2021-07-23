set tabstop=4    "sets space per tab"
set shiftwidth=4 "sets space per indent"
set expandtab    "uses value for tabstop when pressing tab key"
set number       "sets line numbers on startup"
set mouse=a
set noshowmode   "redundant. lightline does this"
"Vim split defaults are garbo"
set splitbelow
set splitright
call plug#begin('~/.config/nvim/plugged')
Plug 'liuchengxu/space-vim-dark'                    "color scheme"
Plug 'tpope/vim-fugitive'                           "vim plugin for git"
Plug 'neoclide/coc.nvim', {'branch': 'release'}     "Add LSP support"
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'                           "File tree"
Plug 'itchyny/lightline.vim'                        "statusline/tabline"
Plug 'mengelbrecht/lightline-bufferline'            "Buffer for statusline"
call plug#end()
syntax on
colorscheme space-vim-dark "The Pink and Green look nice together"
" hi Comment cterm=italic" "Uncomment for italics"
command NT NERDTree
let g:lightline = { "colorscheme": "darcula" }
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2
source ~/.config/nvim/coccy.vim
