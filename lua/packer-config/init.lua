return require('packer').startup(function(use)
  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end
  }) --- markdown preview
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim' -- theme
  use 'kyazdani42/nvim-tree.lua' -- file explorer
  use 'kyazdani42/nvim-web-devicons' -- icons
  use 'rcarriga/nvim-notify' -- notif
  use {
    'nvim-lualine/lualine.nvim', -- > inline
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'romgrk/barbar.nvim', ---> bar
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {'majutsushi/tagbar'} -- code structure
  use {'tpope/vim-fugitive'} -- git integration
  use {'junegunn/gv.vim'} -- commit history
  use 'aaren/arrowkeyrepurpose' -- key as tab
  use {
    'nvim-telescope/telescope.nvim', -- fuzzy finder
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use "lukas-reineke/indent-blankline.nvim"
  use 'scrooloose/nerdcommenter' -- comment
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- code hightlight
  use 'p00f/nvim-ts-rainbow' -- tag color
  use 'windwp/nvim-ts-autotag' -- auto close tag
  use 'windwp/nvim-autopairs' -- auto pair

  -- use "lukas-reineke/lsp-format.nvim"

  -- use 'mustache/vim-mustache-handlebars' -- code hightlight hbs
  use 'sunjon/shade.nvim' -- > dims  inactive windows,
  use 'mg979/vim-visual-multi' -- multi select
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'} -- nvim fold
  -- lsp
  use {"williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig"}
  ---> CMP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "rafamadriz/friendly-snippets" -- snippet 
  use 'onsails/lspkind.nvim' -- vscode like lsp completion items 
  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics, code actions
end)
