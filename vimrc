" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible
set nu
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"设置语法高亮的配色，在GUI界面里使用我自定义的yytextmate.vim
if has("gui_running")
    colorscheme yytextmate
else
    colorscheme elflord 
""    colorscheme slate
""    colorscheme yytextmate
endif

if has('gui_running')
   set background=light
else
   set background=dark
endif

"查找编码的规则（vim7默认都用utf-8，打开包含gbk字符的文件会出现乱码）
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"GUI界面里的字体，默认有抗锯齿
set guifont=Monaco:h12:cANSI

"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

"显示行号
"set number

"行号栏的宽度
set numberwidth=4

"检测文件的类型
filetype on 

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

" 插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ` ``<LEFT>

"取消自动备份
"set nobackup
"保存关闭文件之前保留一个备份
"set writebackup
 
let g:airline_powerline_fonts = 1 

"js语法高亮脚本的设置
let g:javascript_enable_domhtmlcss=1

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

Bundle 'ctrlp.vim'
Bundle 'ctags.vim'
Bundle 'ack.vim'
Bundle 'ruby.vim'
Bundle 'snipMate'
Bundle 'bling/vim-airline'
