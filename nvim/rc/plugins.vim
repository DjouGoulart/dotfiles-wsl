call plug#begin('$XDG_CONFIG_HOME/nvim/plugged')

" colorschemes
Plug 'morhetz/gruvbox'

" general
Plug 'preservim/nerdtree'

"editing

call plug#end()

"##########################################################################
"# CONFIGURATIONS

"# GRUVBOX ################################################################
colorscheme gruvbox
set background=dark    " Setting dark mode

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

"# NERDTREE ###############################################################
map <C-n> :NERDTreeToggle<CR>

