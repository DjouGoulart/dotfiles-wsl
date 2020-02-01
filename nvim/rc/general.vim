" fix change on terminal cursor
set guicursor=

" automatic apply sh syntax for the exports file
autocmd BufEnter $XDG_CONFIG_HOME/shell/exports set syntax=sh

let g:netrw_home=$XDG_CACHE_HOME.'/nvim'
