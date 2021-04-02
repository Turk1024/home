"     VIMRC
" ===============
" General
syntax on
set number
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

" Some pair completion
inoremap {  {}<Left>
inoremap [  []<Left>
inoremap (  ()<Left>
inoremap '  ''<Left>
inoremap "  ""<Left>

" Copy and paste
vnoremap <C-c> "+y
map <C-p> "+p

" Splits
set splitbelow splitright

" Remaps splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split sizes easier
nnoremap <silent> <A-left> :vertical resize +3<CR>
nnoremap <silent> <A-right> :vertical resize -3<CR>
nnoremap <silent> <A-up> :resize +3<CR>
nnoremap <silent> <A-down> :resize -3<CR>

" -- PLUGINS -- "

call plug#begin()
Plug 'mattn/emmet-vim'
call plug#end()

" -- EMMIT CONFIG --"

"  redefine trigger key
let g:user_emmet_leader_key=','

