"-----		Plugins			-----
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()





"-----		Settings		-----
"let mapLeader=" "
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
syntax on
set relativenumber
set nu
set wrap
set showcmd
set wildmenu
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=6
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
exec "nohlsearch"






"----		Settings(Plugins)		-----
let g:SnazzyTransparent = 1
map  sf <Plug>(easymotion-bd-f)
colorscheme snazzy

"--ncm2
set completeopt=noinsert,menuone,noselect
autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"--markdownPreview
nmap <C-p> <Plug>MarkdownPreview
let g:mkdp_browser = 'chromium-browser'

"--airline
let g:airline_theme='term'
"let g:airline#extensions#tabline#enabled = 1







"-----		Mapping			-----
map <Space><Space> /<++><CR>4xi
map <C-l> <nop>
map s <nop>
map K <nop>
map J <nop>
map H <nop>
map L <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

"map sl :set splitright<CR>:vsplit<CR>
"map sh :set nosplitright<CR>:vsplit<CR>
"map sk :set nosplitbelow<CR>:split<CR>
"map sj :set splitbelow<CR>:split<CR>
map st :NERDTreeToggle<CR>
map sn :+tabnext<CR>
map sp :-tabnext<CR>
"map sc <C-h>i----<Tab><Tab><Esc><C-l>a<Tab><Tab>-----<Esc><C-h>i
map s" Ea"<Esc>Bi"<Esc>
map s( Ea)<Esc>Bi(<Esc>
map s[ Ea]<Esc>Bi[<Esc>

map sl <C-w>l
map sk <C-w>k
map sj <C-w>j
map sh <C-w>h

"map <up> :res +5<CR>
"map <down> :res -5<CR>
"map <left> :vertical resize-5<CR>
"map <right> :vertical resize+5<CR>

noremap <left> gT
noremap <right> gt

noremap K 5k
noremap J 5j
noremap H 5h
noremap L 5l

noremap <C-l> $
noremap <C-h> 0

"--markDown
autocmd FileType markdown inoremap ;b **** <++><Esc>bblli

"--C
autocmd FileType c nmap ;c {o<C-h>/*<Esc>}O<C-h>*/<Esc>
autocmd FileType c nmap ;C {jdd}kdd 

