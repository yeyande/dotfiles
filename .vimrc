syntax on
set background=dark
set shiftwidth=4 tabstop=4 expandtab
execute pathogen#infect()

map <F5> <Esc>:EnableFastPHPFolds<Cr>
map <F6> <Esc>:EnablePHPFolds<Cr>
map <F7> <Esc>:EnablePHPFolds<Cr>
map <C-n> <Esc>:tab sp<Cr>

autocmd Filetype html setlocal tabstop=2 shiftwidth=4 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=4 expandtab
