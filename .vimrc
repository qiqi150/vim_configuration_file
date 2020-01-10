set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'noahfrederick/vim-composer'
Plugin 'noahfrederick/vim-laravel'
Plugin 'jwalton512/vim-blade'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
""-----------------------------------------------NERDTree插件配置开始----------------------------------------------------------
" NerdTree才插件的配置信息
""将F2设置为开关NERDTree的快捷键
" map <f2> :NERDTreeToggle<cr>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
" let g:NERDTreeHidden=1
""------------------------------------------------nerdtree插件配置结束---------------------------------------------------------
"
"----------YouComplateMe-------------
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"-----------------------------------

"-----------Taglist------------------------------------------------------------
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联  
let Tlist_Auto_Open=0  "自动开启状态
"----------------------------------------------------------------------------

"------------------------winmanager-------------------------------------------
let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='NERDTree|TagList'
function! NERDTree_Start()
        exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
        return 1
endfunction

" nmap <silent> <F2> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> WMToggle<CR>:q<CR> endif <CR>
nmap <silent> <F2> :WMToggle<CR>
"-----------------------------------------------------------------------------

"filetype plugin on

"let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

"let g:pydiction_menu_height = 3

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


set nu
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
syntax on
