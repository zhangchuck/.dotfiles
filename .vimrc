syntax on

if has("nvim")
    colorscheme NeoSolarized
else
    colorscheme solarized
endif

set termguicolors
set background=dark

set clipboard=unnamedplus " use the system clibpoard (if vimx exists)
set colorcolumn=80
" highlight ColorColumn ctermbg=160 guibg=#D80000
let &colorcolumn=join(range(81,999),",")

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set list
set listchars=tab:!·,trail:·

set number  " show line numbers
set showcmd " show command in bottom bar

" set cursorline " highlight current line
:hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue ctermfg=white

set wildmenu    "visual autocomplete for command menu
set showmatch   " highlight matcching [{()}]

set foldenable  "enable folding
set foldlevelstart=10  " open most folds by default
set foldnestmax=10  " 10 nested fold max
set wrap

" space open/closes folds
nnoremap <space> za

set foldmethod=indent

set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
