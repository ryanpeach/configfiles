"Pathogen Package Manager
execute pathogen#infect()
syntax on
filetype plugin indent on

"Search Features
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch

"Switching Buffers and Tabs
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Tab Pages
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <silent> <C-Tab> <C-W><C-W>
nnoremap <silent> <C-Up> :bn<CR>
nnoremap <silent> <C-Down> :bp<CR>

"Tabs
set expandtab shiftwidth=4 softtabstop=4
set autoindent

"CUA hotkeys
nnoremap <F2> :w !sudo tee %
nnoremap <silent> <C-S> :w<cr>
nnoremap <F4> :wq

"Going to MYVIMRC
nnoremap <F5> :e $MYVIMRC

"Showing Hidden Characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
nnoremap <silent> <C-a> :set list!<CR>
