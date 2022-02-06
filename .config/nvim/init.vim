
lua require('init')

" Clear Highlighting
map <F4> :nohl<CR>

"NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
