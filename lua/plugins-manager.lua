-- Install packer
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- Protected call to check if packer is installed
local status, packer = pcall(require, 'packer')
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim") -- packer can manage itself

    use('nvim-lua/plenary.nvim') -- lua functions that many plugins use

    use('kwsp/halcyon-neovim') -- preferred colorscheme
    use('bluz71/vim-nightfly-guicolors') -- alternate colorscheme

    use('christoomey/vim-tmux-navigator') -- tmux & split window navigation

    use('szw/vim-maximizer') -- maximizes and restores current window

    use('tpope/vim-surround') -- add, delete, change surroundings (it's awesome)
    use('inkarkat/vim-ReplaceWithRegister') -- replace with register contents using motion (gr + motion)

    use('tpope/vim-commentary') -- gcc plugin for commenting

    use('nvim-tree/nvim-tree.lua') -- side bar file explorer

    use('nvim-tree/nvim-web-devicons') -- devicons for nerdfont

    use('nvim-lualine/lualine.nvim') -- status line plugin

    use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }) -- dependency for better sorting performance
    use({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' }) -- fuzzy finder

    use('ap/vim-css-color') -- color highlighting

    -- use({
    --     "VonHeikemen/lsp-zero.nvim",
    --     requires = {
    --         -- LSP Support
    --         { "neovim/nvim-lspconfig" },
    --         { "williamboman/mason.nvim" },
    --         { "williamboman/mason-lspconfig.nvim" },

    --         -- Autocompletion
    --         { "hrsh7th/nvim-cmp" },
    --         { "hrsh7th/cmp-buffer" },
    --         { "hrsh7th/cmp-path" },
    --         { "saadparwaiz1/cmp_luasnip" },
    --         { "hrsh7th/cmp-nvim-lsp" },
    --         { "hrsh7th/cmp-nvim-lua" },

    --         -- Snippets
    --         { "L3MON4D3/LuaSnip" },
    --         { "rafamadriz/friendly-snippets" },
    --     },
    -- })

    -- autocompletion
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')

    -- snippets
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')

    -- managing & installing lsp servers
    use('williamboman/mason.nvim')
    use('williamboman/mason-lspconfig.nvim')
    use('neovim/nvim-lspconfig')
    
    -- -- configuring lsp servers
    -- use('neovim/nvim-lspconfig')
    -- use('hrsh7th/cmp-nvim-lsp')
    -- use({'glepnir/lspsaga.nvim', branch = 'main' })
    -- use('onsails/lspkind.nvim')
    
    -- lsp
    -- use {
    --     'williamboman/mason.nvim',
    --     'williamboman/mason-lspconfig.nvim',
    --     'neovim/nvim-lspconfig',
    -- }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

