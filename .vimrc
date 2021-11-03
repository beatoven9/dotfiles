

call plug#begin('~/.config/nvim/data')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'powerline/powerline'

"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'kyazdani42/nvim-tree.lua'
"Plug 'romgrk/barbar.nvim'

Plug 'habamax/vim-godot'
Plug 'morhetz/gruvbox'
Plug 'glepnir/oceanic-material'
Plug 'wadackel/vim-dogrun'
Plug 'https://github.com/cocopon/iceberg.vim.git'
Plug 'arcticicestudio/nord-vim'


"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'

call plug#end()

let g:coc_global_extensions = ['coc-python', 'coc-jedi', 'coc-clangd', 'coc-pairs', 'coc-rust-analyzer', 'coc-html', 'coc-htmlhint', 'coc-html-css-support', 'coc-sh', 'coc-json', 'coc-tsserver', 'coc-flutter']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-closetag configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
" I added *.js and *.ts There's probably a better way to do this.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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
"colorscheme gruvbox
colorscheme iceberg
"colorscheme nord
"colorscheme dogrun

"let g:oceanic_material_transparent_background=1
"colorscheme oceanic_material
"
"Transparent background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
"autocmd vimenter * hi NonText guibg=NONE ctermbg=NONE
"
"
""""""""""""""""""AirLine settings""""""""""""""""""""""""
""""""""""""""""""AirLine settings""""""""""""""""""""""""

"let g:airline_theme='behelit'
"let g:airline_theme='understated'
"let g:airline_theme='supernova'
"let g:airline_theme='papercolor'
"let g:airline_theme='owo'
"let g:airline_theme='molokai'

"let g:airline_theme='soda'

"let g:airline_theme='violet'
"
"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


""""""""""""""""""AirLine settings""""""""""""""""""""""""
""""""""""""""""""AirLine settings""""""""""""""""""""""""

""""""""""""""""""Powerline""""""""""""""""""""""""
""""""""""""""""""Powerline""""""""""""""""""""""""
let g:powerline_pycmd="py3"

""""""""""""""""""Powerline""""""""""""""""""""""""
""""""""""""""""""Powerline""""""""""""""""""""""""

""""""""""""""""" CustomKeyMappings""""""""""""""""""""""
" Clear Highlighting
map <F4> :nohl<CR>

""""""""""""""Buffer nav""""""""""""""""""""""
" Close buffer
nnoremap <silent>    <C-c> :bd<CR>
" Next/previous buffer
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>        
nnoremap <C-p> :bd<CR>

"NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

