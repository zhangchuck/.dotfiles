syntax on
colorscheme solarized
set background=dark

set colorcolumn=80
" highlight ColorColumn ctermbg=160 guibg=#D80000
let &colorcolumn=join(range(81,999),",")

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set list
set listchars=tab:!·,trail:·

set number  " show line numbers
set showcmd " show command in bottom bar

set cursorline " highlight current line
:hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue ctermfg=white

set wildmenu    "visual autocomplete for command menu
set showmatch   " highlight matcching [{()}]

set foldenable  "enable folding
set foldlevelstart=10  " open most folds by default
set foldnestmax=10  " 10 nested fold max

" space open/closes folds
nnoremap <space> za

set foldmethod=indent

