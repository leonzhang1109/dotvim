"""""""""""""""""""""""""""""""""VIM Config Begin""""""""""""""""""""""""""""""""""""""""
colo desert
"显示行号    
set number "或者set  nu
"映射F5显示行号，参考"vim 按键映射"（http://www.pythonclub.org/vim/map-basic）
"map <F5> <Esc>:set nu<CR>
"映射Ctrl+F5为不显示行号
"map <C-@><F5> <Esc>:set nonu<CR>
nmap <silent> <F5> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>
"检测文件的类型    
filetype plugin indent on
"记录历史的行数    
set history=1000
"自动对齐    
set autoindent
set cindent
"智能选择对齐方式    
set smartindent
"tab显示为4个空格的宽度    
set tabstop=4
"当前行之间交错时使用4个空格    
set shiftwidth=4
"按tab键的时候，插入4个空格
set expandtab
"设置匹配模式，输入做括号会出现右括号    
set showmatch
"高亮查找  
set hlsearch
"粘贴插入
set paste
"编辑时显示光标状态    
set ruler
"快速匹配    
set incsearch
"修改文件自动备份    
set nobackup
"Automatically removing all trailing whitespace for specific file type
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
"if has("vms")
"    set nobackup
"else
"    set backup
"endif
"""""""""""""""""""""""""""""""""VIM Config End""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""Tagbar Config Begin""""""""""""""""""""""""""""""""""""""""
 nmap <silent> <F2> :TagbarToggle<CR>        "按F2即可打开tagbar界面
 let g:tagbar_ctags_bin = 'ctags'                       "tagbar以来ctags插件
 let g:tagbar_left = 1                                          "让tagbar在页面左侧显示，默认右边
 let g:tagbar_width = 30                                     "设置tagbar的宽度为30列，默认40
 let g:tagbar_autofocus = 1                                "这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
 let g:tagbar_sort = 0                                         "设置标签不排序，默认排序
"""""""""""""""""""""""""""""""""Tagbar Config End""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""NERDTree Config End""""""""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"""""""""""""""""""""""""""""""""NERDTree Config End""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
call pathogen#helptags()
