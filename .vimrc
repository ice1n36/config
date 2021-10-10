colorscheme molokai
syntax on

" for neovim mouse scrolling
set mouse=a

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

" source/header switching
Plugin 'a.vim'

Plugin 'vimwiki/vimwiki'

Plugin 'kelwin/vim-smali'

Plugin 'jeetsukumaran/vim-buffergator'

" fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" golang
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" YouCompleteMe settings
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
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
nnoremap <Leader>aa :Rg<CR>
" hidden leader mappings
" <Leader> cc is for single line commenting (from nerdcommenter)
" <Leader> cn is for nested commenting (from nerdcommenter)

map <C-n> :NERDTreeToggle<CR>

" split options
" more natural, split and vsplit right and below (vs left and above)
set splitbelow
set splitright

" set relative line numbers
set rnu

" Use deoplete.
" let g:deoplete#enable_at_startup = 1

" Required:
filetype plugin indent on

set rtp+=/usr/local/opt/fzf

" neovim with python https://ricostacruz.com/til/neovim-with-python-on-osx
let g:python2_host_prog = '/Users/tngo/.pyenv/shims/python2'
let g:python3_host_prog = '/Users/tngo/.pyenv/shims/python3'


" Some fzf commands
" :Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg -L --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

let g:syntastic_cpp_checkers = []
let g:syntastic_c_checkers = []
