"语言设置
set langmenu=none
language messages none

set guifont=Consolas:h14
set nocompatible " be iMproved, required
set background=dark
filetype off " required


" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim

call vundle#begin('~/vimfiles/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
"
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'altercation/vim-colors-solarized'
call vundle#end() " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"设置显示行号
set nu
set rnu


"""=>全局配置<="""
"""""""""""""""""""""""""""""""""""

"显示当前模式
set nosmd

"关闭vi兼容模式"
set nocompatible

"设置历史记录步数"
set history=1000


"通过使用: commands命令，告诉我们文件的哪一行被改变过"
set report=0

"被分割的窗口间显示空白，便于阅读"
set fillchars=vert:\ ,stl:\ ,stlnc:\


"""""""""""""""""""""""""""""""""
"""=>字体和颜色<="""
"""""""""""""""""""""""""""""""""
"自动开启语法高亮"
syntax enable
set background=dark
colorscheme solarized


"高亮显示当前行"
"set cursorline
"hi cursorline guibg=#00ff00
"hi CursorColumn guibg=#00ff00

"""""""""""""""""""""""""""""""
"""=>代码折叠功能<="""
"""""""""""""""""""""""""""""""
"激活折叠功能"
set foldenable
"set nofen（这个是关闭折叠功能）"

"设置按照语法方式折叠（可简写set fdm=XX）"
"有6种折叠方法：
"manual   手工定义折叠"
"indent   更多的缩进表示更高级别的折叠"
"expr     用表达式来定义折叠"
"syntax   用语法高亮来定义折叠"
"diff     对没有更改的文本进行折叠"
"marker   对文中的标志进行折叠"
set foldmethod=manual
"set fdl=0（这个是不选用任何折叠方法）"

"设置折叠区域的宽度"
"如果不为0，则在屏幕左侧显示一个折叠标识列
"分别用“-”和“+”来表示打开和关闭的折叠
set foldcolumn=0


"设置折叠层数为3"
setlocal foldlevel=3

"设置为自动关闭折叠"
set foldclose=all

"用空格键来代替zo和zc快捷键实现开关折叠"
"zo O-pen a fold (打开折叠)
"zc C-lose a fold (关闭折叠)
"zf F-old creation (创建折叠)
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"
"

"""""""""""""""""""""""""""""""""""
"""=>文字处理<="""
"""""""""""""""""""""""""""""""""""
"使用空格来替换Tab"
set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent

"智能缩进"
set si

"自动换行”
set wrap

"设置软宽度"
set sw=4

"行内替换"
set gdefault


""""""""""""""""""""""""""""""""""
"""=>Vim 界面<="""
""""""""""""""""""""""""""""""""""
"增强模式中的命令行自动完成操作"
set wildmenu

"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=2

"不要图形按钮"
set go=

"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能"
set lz

"使回格键（backspace）正常处理indent, eol, start等"
set backspace=eol,start,indent

"设置魔术"
set magic

"关闭遇到错误时的声音提示"
"关闭错误信息响铃"
"set noerrorbells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"关闭使用可视响铃代替呼叫"
"set novisualbell

"高亮显示匹配的括号([{和}])"
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

"光标移动到buffer的顶部和底部时保持8行距离"
set scrolloff=8
"如果项目目录下有vimrc配置文件则使用配置文件
set exrc
"set guicursor
set cmdheight=2


"搜索逐字符高亮"
set hlsearch
set incsearch

"搜索时不区分大小写"
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase

"用浅色高亮显示当前行"
autocmd InsertLeave * se nocul
    autocmd InsertEnter * se cul

"输入的命令显示出来，看的清楚"
set showcmd



""""""""""""""""""""""""""""""""""""
"""=>编码设置<="""
""""""""""""""""""""""""""""""""""""
"设置编码"
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置文件编码"
set fileencodings=utf-8

"设置终端编码"
set termencoding=utf-8

"设置语言编码"
set langmenu=en_US.UTF-8
set helplang=cn

"""""""""""""""""""""""""""""
"""=>其他设置<="""
"""""""""""""""""""""""""""""
"开启新行时使用智能自动缩进"
set smartindent
set cin
set showmatch

"在处理未保存或只读文件的时候，弹出确认"
set confirm

"隐藏工具栏"
set guioptions-=T

"隐藏菜单栏"
set guioptions-=m

"置空错误铃声的终端代码"
set vb t_vb=

"显示状态栏（默认值为1，表示无法显示状态栏）"
set laststatus=2
let g:lightline = { 'colorscheme':'powerline', } "设置状态栏插件

"状态行显示的内容"
" 这里将
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


"设置背景颜色"
set background=dark

"文件类型自动检测，代码智能补全"
set completeopt=longest,preview,menu

"共享剪切板"
set clipboard+=unnamed

"从不备份"
set nobackup
set noswapfile

"自动保存"
set autowrite


"set colorcolumn=80
"set signcolumn=yes
"highlight ColorColumn ctermbg=0 guibg=lightgrey


"显示中文帮助"
if version >= 603
        set helplang=cn
            set encoding=utf-8
endif


"新建.py,.cc,.sh,.java文件，自动插入文件头"
autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetTitle()"
"定义函数SetTitle，自动插入文件头"

