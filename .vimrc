

call plug#begin('~/.config/nvim/data')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

Plug 'habamax/vim-godot'
Plug 'morhetz/gruvbox'

"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

let g:coc_global_extensions = ['coc-python', 'coc-jedi', 'coc-clangd', 'coc-pairs', 'coc-rust-analyzer', 'coc-html', 'coc-htmlhint', 'coc-html-css-support', 'coc-sh', 'coc-json', 'coc-tsserver']

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" line numbers
set number
set relativenumber

" whitespace
set wrap
set linebreak

" format tab
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" ColorScheme
colorscheme gruvbox

set background=dark

" CustomKeyMappings
map <F4> :nohl<CR>

