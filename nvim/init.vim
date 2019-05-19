" General configuration

set fcs=eob:\ 
set number
set nuw=5
set nowrap
set splitright
set laststatus=0 ruler
set noerrorbells
set undofile
set shiftwidth=4
set undolevels=1000
set undoreload=10000
set termguicolors
set background=dark
colorscheme NeoSolarized


" Disable arrow keys

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Plugins

call plug#begin('~/.local/share/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'iCyMind/NeoSolarized'
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()


" Editing NerdTree

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI = 1
hi VertSplit guifg=#333333
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Starting deoplete

let g:deoplete#enable_at_startup = 1


" Launch arguements
"
autocmd vimenter * NERDTree | wincmd w


" Editing cursorline
set cul
hi CursorLine guibg=#333333
hi CursorLineNr guibg=#333333
autocmd InsertEnter * hi CursorLine guibg=#333333
autocmd InsertLeave * hi CursorLine guibg=#333333


" Editing LineNr

hi LineNr guifg=#FFFFFF
