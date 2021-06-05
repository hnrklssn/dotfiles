set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Better spaces are better than tabs
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Add numbers, lines and colors!
set number
set relativenumber
set cursorline
syntax on
" stop accidental commandline-history
map q: :q<CR> 

" Small shortcuts, space -> char
let mapleader = ' '
" For filetype dependent shortcuts"
let maplocalleader = ","

" Toggle line numbers for copying
map <leader>c :set number! relativenumber!<CR>
" Don't mangle comments and indents when pasting
map <leader>p :set paste! paste?<CR>
set showmode


" make some common thing easier
map <leader>w :w<CR>
map <leader>s :wq<CR>
map <leader>q :q<CR>

" newlines without going to insert
map <leader>o o<esc>
map <leader>O O<esc>

" autoindent with space -> i
map <leader>i mzgg=G`z 

" space -> h: haaalp
map <leader>h :echo "
            \TIPS:\n
            \MOVE:\n
            \hjkl - piltangenter. funkar som mycket annat med siffor 4j === j j j j\n
            \HML - hoppa High Mid Low på skärmen\n
            \{} - hoppa till nästa helt blanka rad\n
            \0/$ - hoppa till start/slut av rad\n
            \/[sökterm] - hoppa till sökterm 👎 gå till nästa träff\n
            \ W B - hoppa Word, Back (dvs. nästa whitespace)\n
            \\n
            \COMBO:\n
            \Dessa skrivs innan en move för att göra dessa!!\n
            \c - change. ta bort det din move säger sen gå till insert. \n
            \d - delete. ta bort men stanna i normal\n
            \y - yank. gammalt ord för copy. kopiera det move säger \n 
            \OBS alla dessa gör att p pastar!!\n
            \\n
            \INSERT:\n
            \i - gå till insert innan cursor, a - efter, s - gör det men ta bort char under cursor.\n
            \I - gå till insert start av rad (samma som 0i), A - slut av raden. S - ta bort raden och gå till insert\n
            \\n
            \SECRET stuffs:\n
            \macro lägg till indent: q -> a -> I -> tab -> esc -> j -> q. via @a eller 123@a kan du nu indenta en eller 123 rader!!\n
            \många saker funkar med stor bokstav lite annorlunda testa!!
            \\n
            \ classics: dd p. flytta en rad ner. J ta bort nästa newline. punkt, gör samma sak som sist. cw -> change word.\n
            \ notes CAPS är kass, escape är långt bort  ----> xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' \n
            \"<CR>

Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/syntastic'
Plugin 'derekwyatt/vim-scala'
Plugin 'leafgarland/typescript-vim'
Plugin 'liuchengxu/space-vim-theme'


" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala
"
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
" " Configuration for vim-lsc

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
let g:rustfmt_autosave = 1

colorscheme space_vim_theme
