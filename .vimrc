"call plug#begin('~/.config/nvim/data')
"
"Plug 'preservim/nerdtree'
"Plug 'https://github.com/cocopon/iceberg.vim.git'
"
"Plug 'habamax/vim-godot'
"Plug 'calviken/vim-gdscript3'
"Plug 'jvirtanen/vim-octave'
"
""Plug 'kyazdani42/nvim-tree.lua'
""Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'alvan/vim-closetag'
"
"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install --frozen-lockfile --production',
"  \ 'branch': 'release/0.x'
"  \ }
"
"call plug#end()

colorscheme iceberg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-closetag configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype on

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
" I added *.js and *.ts There's probably a better way to do this.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.ts'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
" TRY ADDING TSX FILES TO THIS
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
