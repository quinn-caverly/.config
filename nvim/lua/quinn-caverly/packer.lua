-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { "catppuccin/nvim",
        as = "catppuccin",
        flavour = "latte",
        config = function()
            vim.cmd('colorscheme catppuccin')
        end
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = true,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use({
        "jackMort/ChatGPT.nvim",
        config = function()
            require("chatgpt").setup()
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context")

    -- shows lightbulb when code action available
    use({
        'kosayoda/nvim-lightbulb',
        requires = 'antoinemadec/FixCursorHold.nvim',
    })

    -- Regex explaining plugin
    use('tomiis4/Hypersonic.nvim')

    -- Neovim screensaver
    use({
        "folke/drop.nvim",
        event = "VimEnter",
    })

    use({"ggandor/leap.nvim"})
    require('leap').add_default_mappings()

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")
    use("laytan/cloak.nvim")

    use({
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    })

    -- debugging
    use('mfussenegger/nvim-dap')
    use('leoluz/nvim-dap-go')
    use { 'rcarriga/nvim-dap-ui', as = "dapui" }
    use('theHamsta/nvim-dap-virtual-text')
    use('nvim-telescope/telescope-dap.nvim')

    use('m4xshen/autoclose.nvim')
end)
