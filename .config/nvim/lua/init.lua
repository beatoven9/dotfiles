local set = vim.opt

-- Set the behavior of tab
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.autoindent = true
    
--linewrapping
set.wrap = true
set.linebreak = true

--numbers
set.number = true
set.relativenumber = true

-------------------------------------------------------------------
-------------------vim-plug----------------------------------------
-------------------------------------------------------------------

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'https://github.com/cocopon/iceberg.vim.git'
Plug 'navarasu/onedark.nvim'

--Language specific lsp Plugins
Plug 'habamax/vim-godot'
--Plug 'calviken/vim-gdscript3'
Plug 'jvirtanen/vim-octave'

Plug 'preservim/nerdtree'
--Plug 'kyazdani42/nvim-tree.lua'


--JSX tags
Plug 'maxmellon/vim-jsx-pretty'
Plug 'windwp/nvim-ts-autotag'

--Formatting
Plug 'jiangmiao/auto-pairs'
Plug 'averms/black-nvim'

Plug 'nvie/vim-flake8' --pip install flake8 F7  to run                                                                                                                                                                                                                         
--Plug 'fisadev/vim-isort'

--LSP/autocomplete config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

--snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
--Plug 'L3MON4D3/LuaSnip'

--Plug 'prettier/vim-prettier', {
--  \ 'do': 'yarn install --frozen-lockfile --production',
--  \ 'branch': 'release/0.x'
--  \ }

vim.call('plug#end')




require'lspconfig'.bashls.setup{}
require'lspconfig'.pyright.setup{} -- yay -S pyright-git
require'lspconfig'.clangd.setup{} -- must have clangd installed
require'lspconfig'.tsserver.setup{} -- pacman typescript, yay -S typescript-langserver
require'lspconfig'.rust_analyzer.setup{} -- pacman -S rust-analyzer
require'lspconfig'.gdscript.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
------------------------------------------------------------------------------------
----------------------------- onedark theme ----------------------------------------
------------------------------------------------------------------------------------
require('onedark').setup  {
    -- Main options --
    style = 'cool', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = true,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    -- toggle theme style ---
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
require('onedark').load()

-- nvim-cmp
local cmp = require('cmp')
local menu = {buffer = '[Buf]', nvim_lsp = '[LSP]', omni = '[Omni]', path = '[Path]'}
local widths = {abbr = 80, kind = 40, menu = 40}
cmp.setup {
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  completion = {keyword_length = 2},
  formatting = {
    format = function(entry, vim_item)
      vim_item.menu = vim_item.menu or menu[entry.source.name]
      for k, width in pairs(widths) do
        if #vim_item[k] > width then
          vim_item[k] = fmt('%s...', string.sub(vim_item[k], 1, width))
        end
      end
      return vim_item
    end,
  },
  mapping = {
    ['<Tab>'] = function(fb) if cmp.visible() then cmp.select_next_item() else fb() end end,
    ['<S-Tab>'] = function(fb) if cmp.visible() then cmp.select_prev_item() else fb() end end,
  },
  preselect = require('cmp.types').cmp.PreselectMode.None,
  sources = cmp.config.sources({
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'omni'},
    {name = 'path'},
    {name = 'buffer'},
  }),
}

--vim.cmd [[
--    syntax enable
--    colorscheme onedark
--]]
