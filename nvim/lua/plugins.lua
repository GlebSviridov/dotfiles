local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'hoob3rt/lualine.nvim' -- Status line
  --themes
  use 'folke/tokyonight.nvim'
  use 'ellisonleao/gruvbox.nvim'

  use 'onsails/lspkind-nvim' -- vs-code like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'glepnir/lspsaga.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons' }

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  use { "williamboman/mason.nvim" }
  use 'williamboman/mason-lspconfig.nvim'

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

end)
