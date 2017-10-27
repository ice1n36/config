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

" NOTE: Disabled android/java plugins bc juice not worth squeeze for now
" android vim plugin
" Plugin 'hsanson/vim-android'

" java completion
" Plugin 'artur-shaik/vim-javacomplete2'

" ctrl-p
Plugin 'ctrlpvim/ctrlp.vim'

" source/header switching
Plugin 'a.vim'

Plugin 'rdnetto/YCM-Generator'

Plugin 'dkprice/vim-easygrep'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe settings
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_confirm_extra_conf = 0
"Uncomment when ready
" let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"

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
nnoremap <Leader>hh :nohl<CR>

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
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()
" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set rtp+=/usr/local/opt/fzf

" neovim with python https://ricostacruz.com/til/neovim-with-python-on-osx
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
