" Disable safe write
" -------------------------------------
set nobackup
set nowritebackup

" Other
" -------------------------------------
set wildignore=*.egg-info,*.pyc,node_modules,.git,.tern*,Session.vim,build
set list listchars=tab:›\ ,trail:·,extends:>,precedes:<
set noswapfile
set number nowrap cursorline incsearch ignorecase smartcase
set expandtab autoindent smarttab
set synmaxcol=200

set guifont=Fira\ Code:h11
set guicursor=a:hor33-Cursor
set guicursor+=i:ver33-iCursor
set guicursor+=a:blinkon200-blinkoff50

set mouse=a

" Colorscheme
" -------------------------------------
set termguicolors
colorscheme NeoSolarized
set background=light
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1

highlight Cursor gui=reverse guifg=reverse guibg=reverse
highlight iCursor gui=reverse guifg=NONE guibg=NONE

" Session
" -------------------------------------
set sessionoptions+=tabpages,globals


" Functions
" -------------------------------------
function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

