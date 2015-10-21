syntax on
set background=dark
set shiftwidth=4 tabstop=4 expandtab
set laststatus=2
set number
set hidden
set tags=./tags;,tags;$HOME

map <C-n> <Esc>:tab sp<Cr>

autocmd Filetype html setlocal tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
autocmd Filetype eruby setlocal tabstop=2 shiftwidth=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2

autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0

