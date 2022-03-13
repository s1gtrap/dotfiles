set relativenumber

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-syntastic/syntastic'
call plug#end()

" powerline
set laststatus=2
set rtp+=/usr/local/lib/python3.9/site-packages/powerline/bindings/vim

" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" rust.vim
let g:rustfmt_autosave = 1
