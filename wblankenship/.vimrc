" Setup Pathogen
" Our pahtogen setup searches the list of directories passed for configuration
" files
execute pathogen#infect('bundle/{}','nodejs/{}')

" setup GOLANG
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax enable

" Start personal customizations
colorscheme molokai     " located in .vim/colors
colorscheme molokai     " located in .vim/colors
set t_Co=256            " 256 bit color

set tabstop=2           " 4 spaces per tab
set shiftwidth=2        " indentation
set expandtab           " tabs are Spaces
filetype indent on      " indents based on filetype

set number              " show line numbers
set showcmd             " show current command
set cursorline          " highlight the current line
set wildmenu            " auto complete commands
set lazyredraw          " redraw less often
set showmatch           " highlight matching brackets

" Searching
set incsearch           " realtime search while typeing
set hlsearch            " highlight matches

" Code Folding on spacebar
set foldenable          " enable code folding
set foldlevelstart=10   " don't fold code by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indents
nnoremap <space> za     " space bar for code folding
