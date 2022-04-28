
lua require('init')

" Clear Highlighting
map <F4> :nohl<CR>

"NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.o$']

"Godot Mappings
nnoremap  <leader>n :GodotRun<CR>
nnoremap  <F5> :GodotRunLast<CR>
nnoremap  <F6> :GodotRunCurrent<CR>
nnoremap  <F7> :GodotRunFZF<CR>

""""""""""""""Buffer nav""""""""""""""""""""""
" Close buffer
nnoremap <silent>    <C-c> :bd<CR>
" Next/previous buffer
nnoremap <C-k> :bnext<CR>
nnoremap <C-j> :bprevious<CR>        
nnoremap <C-p> :bd<CR>

set completeopt=menu,menuone,noselect


"-------------------------------------------------------------------
"-------------------vim-plug----------------------------------------
"-------------------------------------------------------------------

"""call plug#begin('~/.config/nvim/data')

"""Plug 'nvim-treesitter/nvim-treesitter'
"""
"""Plug 'https://github.com/cocopon/iceberg.vim.git'
"""Plug 'navarasu/onedark.nvim'
"""
""""""Language specific lsp Plugins
"""Plug 'habamax/vim-godot'
""""""Plug 'calviken/vim-gdscript3'
"""Plug 'jvirtanen/vim-octave'
"""
"""Plug 'preservim/nerdtree'
""""""Plug 'kyazdani42/nvim-tree.lua'
"""
"""
""""""JSX tags
"""Plug 'maxmellon/vim-jsx-pretty'
"""Plug 'windwp/nvim-ts-autotag'
"""
""""""Formatting
"""Plug 'jiangmiao/auto-pairs'
"""Plug 'averms/black-nvim'
"""
"""Plug 'nvie/vim-flake8' """pip install flake8 F7  to run                                                                                                                                                                                                                         
""Plug 'fisadev/vim-isort'

""""LSP/autocomplete config
"Plug 'neovim/nvim-lspconfig'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/nvim-cmp'
"
""""snippets
"Plug 'hrsh7th/cmp-vsnip'
"Plug 'hrsh7th/vim-vsnip'
""""Plug 'L3MON4D3/LuaSnip'
"
"""Plug 'prettier/vim-prettier', {
"""  \ 'do': 'yarn install --frozen-lockfile --production',
"""  \ 'branch': 'release/0.x'
"""  \ }

"""call plug#end()

"lua << EOF
"require'lspconfig'.gdscript.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}
"
"local cmp = require'cmp'
"
"cmp.setup({
"  mapping = {
"    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
"    ['<C-f>'] = cmp.mapping.scroll_docs(4),
"    ['<C-Space>'] = cmp.mapping.complete(),
"    ['<C-e>'] = cmp.mapping.close(),
"    ['<CR>'] = cmp.mapping.confirm({ select = true }),
"  },
"
"  sources = {
"    { name = 'nvim_lsp' },
"    { name = 'buffer' },
"  }
"})
"EOF
