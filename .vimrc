" .vimrc

" load up pathogen
call pathogen#infect()

" don't need to be compatible with old vim
set nocompatible

" set leader key to comma
let mapleader = ","

" command-t options
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT %%<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>

" map %% to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" switch between the last two files
nnoremap <leader><leader> <c-^>

" make the current window big, but leave others context
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" move between splits more easily
map <C-J> <C-W>w
map <C-K> <C-W>W

" show line numbers
set nu

" show row and column in footer
set ruler

" minimum lines above/below cursor
set scrolloff=2

" disable code folding
set nofoldenable

" put useful info in status bar
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [LEN=%L]\ [%p%%]

" always show status bar
set laststatus=2

" show extra space characters
set list listchars=tab:»·,trail:·

" toggle spellcheck with <F5>
:map <F5> :setlocal spell! spelllang=en_au<cr>
:imap <F5> <ESC>:setlocal spell! spelllang=en_au<cr>

" show syntax highlighting
syntax on

" we have a dark background
set background=dark
colorscheme solarized

" set auto indent
set autoindent
filetype plugin indent on

" set indent to 2 spaces and expand
set ts=2
set shiftwidth=2
set expandtab

" show bracket matches
set showmatch

" ignore case in search
set ignorecase

" pay attention to case when caps are used
set smartcase

" show search results as I type
set incsearch

" enable mouse support
set mouse=a

" enable visual bell (disable audio bell)
set vb

" enable bash style tab completion
set wildmenu
set wildmode=list:longest,full

" highlight long lines
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
