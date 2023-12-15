-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    } -- Fuzzy finder 

    use({
	    'kwsp/halcyon-neovim',
	    as = 'halcyon',
	    config = function()
		    vim.cmd('colorscheme halcyon')
	    end
    }) -- Prefered colorscheme

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- treesitter for color
    use('nvim-treesitter/playground') -- treesitter playground
    use('christoomey/vim-tmux-navigator') -- tmux & split window navigation
    use('inkarkat/vim-ReplaceWithRegister') -- replace with register contents using motion (gr + motion)
    use('nvim-tree/nvim-tree.lua') -- side bar file explorer
    use('nvim-tree/nvim-web-devicons') -- devicons for nerdfont
    use('nvim-lualine/lualine.nvim') -- status line plugin
    use('ap/vim-css-color') -- color highlighting
    use('tpope/vim-commentary') -- gcc plugin for commenting
    use('tpope/vim-surround') -- add, delete, change surroundings (it's awesome)
    use('tpope/vim-fugitive')
    use('mbbill/undotree')
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            requires = {
                --- Uncomment these if you want to manage LSP servers from neovim
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                -- LSP Support
                {'neovim/nvim-lspconfig'},

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'L3MON4D3/LuaSnip'},
            }
    }

end)
