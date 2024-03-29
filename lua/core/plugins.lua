local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  'ellisonleao/gruvbox.nvim',
  'rebelot/kanagawa.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'bluz71/vim-nightfly-colors',
  'vim-test/vim-test',
  'lewis6991/gitsigns.nvim',
  'preservim/vimux',
  'christoomey/vim-tmux-navigator',
  'tpope/vim-fugitive',
  -- 'tpope/vim-commentary',

  -- rust babyyyyyyy
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',

  -- completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  {
      'nvimdev/lspsaga.nvim',
      config = function()
          require('lspsaga').setup({
              ui = {
                code_action = ''
              },
        })
      end,
      dependencies = {
          'nvim-treesitter/nvim-treesitter',
          'nvim-tree/nvim-web-devicons'
      }
  },
  {
    'nvim-telescope/telescope.nvim',
    -- tag = '0.1.0',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  "xiyaowong/transparent.nvim",
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  'nvim-telescope/telescope-ui-select.nvim',
  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  },
  'numToStr/Comment.nvim',
  -- "abecodes/tabout.nvim"
  -- trouble.nvim
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  'navarasu/onedark.nvim',
  -- Lua
  {
    "folke/zen-mode.nvim",
    opts = {
      plugins = {
        alacritty = {
          enabled = true,
          font = "22", -- font size
          background_opacity = "1", -- 0-1
        },
        tmux = { enabled = true },
      },
    }
  },
  'hankchiutw/flutter-reload.vim',
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  'EmranMR/tree-sitter-blade',
  'RobertBrunhage/flutter-riverpod-snippets',
}

local opts = {}

require("lazy").setup(plugins, opts)
