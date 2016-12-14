colorscheme molokai
syntax on

" vundle requirements
set nocompatible
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" status bar
Plugin 'bling/vim-airline'

" commenting plugin
Plugin 'scrooloose/nerdcommenter'

" syntax checking
Plugin 'scrooloose/syntastic'

" c/c++ header guard helper
Plugin 'drmikehenry/vim-headerguard'

" android vim plugin
Plugin 'hsanson/vim-android'

" java completion
Plugin 'artur-shaik/vim-javacomplete2'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe settings
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" Smarter tab line (airline setting)
let g:airline#extensions#tabline#enabled = 1

" Setup android sdk path
let g:android_sdk_path = "/opt/android-sdk"

" turn on highlighed search
set hlsearch

" show spaces as dots and tabs as ->
set list listchars=tab:→\ ,trail:·

" work with system clipboard
set clipboard=unnamed

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set number        " always show line numbers

" leader mappings
nnoremap <Leader>ff :FZF<CR>

map <C-n> :NERDTreeToggle<CR>

" split options
" more natural, split and vsplit right and below (vs left and above)
set splitbelow
set splitright

" set relative line numbers
set rnu

" vim-plugs
call plug#begin()

" fzf vim wrapper
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" dark powered completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Required:
set runtimepath+=~/.config/nvim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'dkprice/vim-easygrep'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
