syntax enable
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
set laststatus=2
set number
set hidden
set tags=./tags;,tags;$HOME
set clipboard=unnamed

map <C-n> <Esc>:tabe<Cr>

autocmd Filetype html setlocal shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2
autocmd Filetype ruby setlocal shiftwidth=2 softtabstop=2
autocmd Filetype eruby setlocal shiftwidth=2 softtabstop=2

autocmd FileType make setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=0
