" 定义快捷键的前缀，即 <Leader>
let mapleader=";"
let g:mapleader=";"

" >>
" 文件类型侦测

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
set bs=2
" <<

" >>
" vim 自身（非插件）快捷键

" 定义快捷键到行首和行尾
"nmap <Leader>lb 0
"nmap <Leader>le $

" 设置快捷键将选中文本块复制至系统剪贴板
nmap <Leader>y "+y
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>W :waq<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :q!<CR>

" 设置快捷键遍历子窗口
" 依次遍历
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 定义快捷键在结对符之间跳转，助记 pair
nmap <Leader>pa %
map \ :!sh -xc "git diff\|clang-format-diff -p 1 -style=Google -i"<CR>:e<CR>

vnoremap // y/<C-R>"\><CR>
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd TextChanged,TextChangedI <buffer> silent write

" <<

" >>
" 其他

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu
" >>
" 营造专注气氛

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

set mouse=a
" >>
" 辅助信息

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示搜索结果
set hlsearch

" <<

" >>
" 其他美化

" 设置 gvim 显示字体
set encoding=utf8
" set guifont=YaHei\ Consolas\ Hybrid\ 12
set guifont="Sauce Code Pro Nerd Font 12"

" 禁止折行
set nowrap

" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" <<

" >>
" 语法分析

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" <<

" >>
" 缩进

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
" set expandtab
" 设置编辑时制表符占用空格数
" set tabstop=2
" 设置格式化时制表符占用空格数
" set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
" set softtabstop=2

set nocompatible

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-w> <esc>wi
inoremap <C-b> <esc>bi
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
cnoremap <C-w> <esc>wi
cnoremap <C-b> <esc>bi

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-gruvbox8'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer',  'for': ['c', 'cpp', 'cc'] }
" Plug 'dense-analysis/ale'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-signify'
Plug 'derekwyatt/vim-fswitch'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'tpope/vim-sleuth'
Plug 'itchyny/vim-cursorword'
Plug 'skywind3000/vim-preview'
Plug 'majutsushi/tagbar'
" Plug 'Shougo/deol.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'rhysd/vim-clang-format'
Plug 'mbbill/undotree'
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Plug 'ryanoasis/vim-devicons'
" Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
call plug#end()

set background=dark
"colorscheme molokai
colorscheme gruvbox8

let $VIMFILES = $HOME.'/.vim'
let _vimscripts = split(globpath('$VIMFILES/vimrcs','*.vim'),'\n')
for _vimscript in _vimscripts
      execute "source "._vimscript
endfor

let g:tagbar_right=1
map <leader>tl :TagbarToggle<CR>

autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>

" set splitright
" nnoremap <c-z> :vnew<cr>:Deol<cr>
" tnoremap <ESC> <C-\><C-n>
noremap <m-u> :PreviewScroll -1<cr>
noremap <m-d> :PreviewScroll +1<cr>

nnoremap <leader>u :UndotreeToggle<cr>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" rename
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent> <leader>cl  :<C-u>CocList locationlist<cr>

noremap <silent> <leader>ps :CocCommand python.sortImports<cr>

nnoremap <silent> <leader>e
            \ :<C-u>Defx <CR>

if has('nvim')

endif
