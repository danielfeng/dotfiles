""by daniel's vimrc

"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

if has("syntax")
  syntax on
endif

" Force using the Django template syntax file
let g:sls_use_jinja_syntax = 0

"设置语法高亮的配色，在GUI界面里使用我自定义的yytextmate.vim
if has("gui_running")
  colorscheme yytextmate
else
  colorscheme gruvbox8
  "colorscheme slate
endif

"查找编码的规则（vim7默认都用utf-8，打开包含gbk字符的文件会出现乱码）
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"GUI界面里的字体，默认有抗锯齿
"set guifont=Monaco:h12:cANSI
set guifont=Menlo\ for\ Powerline


"显示行号
set number

"粘贴的时候关闭自动缩进
set paste 

"行号栏的宽度
set numberwidth=4

"检测文件的类型
filetype off
"filetype on 

"根据侦测到的不同类型文件加载对应插件
filetype plugin on

"根据检测到的不同类型采用不同的缩进格式
filetype indent on

"取消补全内容以分割子窗口形式出现，只显示补全类表
"set completeopt = longest,menu

"记录历史的行数
set history=1000 

"背景使用黑色
set background=dark 

"语法高亮度显示
"syntax on 

"下面两行在进行编写代码时，在格式对起上很有用；
"第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
"第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
"写上很有用
"set autoindent
"set smartindent

"第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set tabstop=2
set shiftwidth=2

"行间距，如果默认值太小，代码会非常纠结
set linespace=4    

"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"去除vim的GUI版本中的toolbar
set guioptions-=T

"初始窗口的宽度
"set columns=195
"初始窗口的高度
"set lines=45
"初始窗口的位置
"winpos 52 42

"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"默认情况下，寻找匹配是高亮度显示的，该设置关闭高亮显示
"set nohls

"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
"时，别忘记回车
set incsearch

"禁止自动换行
set nowrap

"在输入命令时列出匹配项目
set wildmenu

"分割窗口时保持相等的宽/高
set equalalways

"使用空格填充tab空位
set expandtab

"程序员常用的配置
"set expandtab tabstop=4 shiftwidth=4 softtabstop=4

"匹配括号的规则，增加针对html的<>
set matchpairs=(:),{:},[:],<:>

"让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
set whichwrap=b,s,<,>,[,]

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1   
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'

"取消自动备份
"set nobackup
"保存关闭文件之前保留一个备份
"set writebackup

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'saltstack/salt-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'alpertuna/vim-header'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lifepillar/vim-gruvbox8'
"Plugin 'morhetz/gruvbox'
Plugin 'c9s/colorselector.vim'

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


"js语法高亮脚本的设置
let g:javascript_enable_domhtmlcss=1

" 插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"vim header auto F4
let g:header_field_author = 'danielfeng'
let g:header_field_author_email = 'danielfancy@gmail.com'
let g:header_field_timestamp_format = "%Y-%m-%d %H \72 %M"
let g:header_auto_add_header = 0
map <C-h> :AddHeader<CR>

"进行版权声明的设置
"添加或更新头
map <C-T> :call TitleDet()<cr>'s
function AddTitle()
  call append(0,"#!/usr/bin/env bash")
  call append(1,"# Author : danielfeng")
  call append(2,"# E-Mail : danielfancy@gmail.com")
  call append(3,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
  call append(4,"# Filename: ".expand("%:t"))
  call append(5,"# Description: ")
  call append(6," ")
  echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
  normal m'
  execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
  normal ''
  normal mk
  execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
  execute "noh"
  normal 'k
  echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
  let n=1
  "默认为添加
  while n < 10
    let line = getline(n)
    if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
      call UpdateTitle()
      return
    endif
    let n = n + 1
  endwhile
  call AddTitle()
endfunction
