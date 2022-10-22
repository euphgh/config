"basic{{{
set number                  "设置行号
syntax on                   "语法高亮
set cursorline              "突出显示当前行
let mapleader="\<space>"    "使用空格作为先导
set foldenable              "启动折叠
set foldmethod=marker       "marker的折叠模式
set nocompatible            "不启用vi
"}}}
"keymap {{{
nnoremap <Leader>vr :tabe $MYVIMRC<CR>
nnoremap <Leader>tr :tabe ~/.tmux.conf<CR>
nnoremap <Leader>hc :noh<CR>
nnoremap <Leader>w  *N
"}}}
"plugin list{{{
call plug#begin('~/.config/nvim/plugged')
"OneDark主题及其语法高亮{{{
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
"}}}
"tmux和Vim的一致操作{{{
Plug 'christoomey/vim-tmux-navigator'
"}}}
"状态栏和buf标号{{{
Plug 'itchyny/lightline.vim'
"}}}
"注释助手{{{
Plug 'scrooloose/nerdcommenter'
"}}}
"括号{{{
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
"}}}
"工作区{{{
Plug 'thaerkh/vim-workspace'
"}}}
"多光标{{{
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"}}}
"coc{{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"}}}
call plug#end()
"}}}
"OneDark 和 lightline的主题{{{
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
endif
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
set ttimeout ttimeoutlen=50
"}}}
"coc-list-files{{{
nnoremap <C-p> :CocList files<CR>
"}}}
"coc-enter-complete{{{
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"}}}
"workspace{{{
let g:workspace_autosave = 0
let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_untrailtabs = 0
"}}}
"rainbow enable{{{
let g:rainbow_active = 1
"}}}
"tab和空格一致性{{{
set autoindent              
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
"}}}
