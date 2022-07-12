return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'rcarriga/nvim-notify'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'romgrk/barbar.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use { 'majutsushi/tagbar' } -- code structure
    use { 'Yggdroot/indentLine' } -- see indentation
    use { 'tpope/vim-fugitive' } -- git integration
    use { 'junegunn/gv.vim' } -- commit history
    use 'aaren/arrowkeyrepurpose' -- key as tab
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'scrooloose/nerdcommenter'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'

    use "lukas-reineke/lsp-format.nvim"

    -- lsp
    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }
    ---> CMP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use "rafamadriz/friendly-snippets"
    use 'onsails/lspkind.nvim'
end)
