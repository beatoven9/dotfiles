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
set.relativenumber = true

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'https://github.com/cocopon/iceberg.vim.git'

Plug 'habamax/vim-godot'
Plug 'calviken/vim-gdscript3'
Plug 'jvirtanen/vim-octave'

--Plug 'kyazdani42/nvim-tree.lua'
--Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'

--Plug 'prettier/vim-prettier', {
--  \ 'do': 'yarn install --frozen-lockfile --production',
--  \ 'branch': 'release/0.x'
--  \ }

vim.call('plug#end')

