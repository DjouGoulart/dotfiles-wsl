call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" general
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'

"editing
Plug 'tpope/vim-surround'

call plug#end()

"##########################################################################
"# PLUGINS CONFIGURATIONS

"# GRUVBOX ################################################################
set termguicolors
set background=dark    " Setting dark mode
let g:gruvbox_italic = 1 
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

"# AIRLINE ################################################################
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='gruvbox'

"# NERDTREE ###############################################################
nnoremap <C-n> :NERDTreeToggle<CR>

"# UNDOTREE ###############################################################
nnoremap <C-u> :UndotreeToggle<CR>

"# INDENTLINE #############################################################
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
set ts=2 sw=2 et

