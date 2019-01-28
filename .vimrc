" plugs
call plug#begin()

Plug 'brendonrapp/smyck-vim'

Plug 'csscomb/vim-csscomb'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'elixir-lang/vim-elixir'

Plug 'keith/swift.vim'

Plug 'leafgarland/typescript-vim'

Plug 'mileszs/ack.vim'

Plug 'racer-rust/vim-racer'

Plug 'rust-lang/rust.vim'

Plug 'tikhomirov/vim-glsl'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

Plug 'vim-airline/vim-airline'

Plug 'w0rp/ale'

call plug#end()

" syntax
syntax on
colorscheme smyck

set nowrap
set encoding=utf-8
set mouse=a
set laststatus=2
set list listchars=tab:»\ ,trail:·,nbsp:·
set relativenumber
set ts=4 sw=4
let mapleader = " "

" folding
set foldmethod=syntax
set foldnestmax=2
set foldlevel=2

" use ag
let g:ackprg = 'ag --nogroup --nocolor --column'

" ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {'html':[]}

nmap <silent> <leader>j <Plug>(ale_next_wrap)
nmap <silent> <leader>k <Plug>(ale_previous_wrap)

" ctrlp
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#ale#enabled = 1

nnoremap <expr><C-j> color#Test(expand('<cword>'))
            \? '"_ciw' . color#Darken(expand('<cword>')) . "\<Esc>"
            \: "\<Nop>"
nnoremap <expr><C-k> color#Test(expand('<cword>'))
            \? '"_ciw' . color#Lighten(expand('<cword>')) . "\<Esc>"
            \: "\<Nop>"

" language defaults
autocmd FileType java setlocal sw=4 ts=4 et si
autocmd FileType ruby setlocal sw=2 ts=2 et si
autocmd FileType html setlocal sw=2 ts=2 et si
autocmd FileType typescript setlocal sw=2 ts=2 et si

" highlighting fixes
highlight Folded ctermbg=DarkGrey ctermfg=White
