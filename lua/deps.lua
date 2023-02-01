local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--single-branch",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
    "neovim/nvim-lspconfig", -- Mind the semi-colons
    "folke/tokyonight.nvim", -- theme
    "nvim-lualine/lualine.nvim", -- status line
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim", -- telescope dependences
    { "nvim-telescope/telescope.nvim", branch = "0.1.x" },
    'windwp/nvim-autopairs',
    -- auto complete
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    ----------------
    'nvim-tree/nvim-web-devicons', -- explorer icon
    'nvim-tree/nvim-tree.lua',
    'numToStr/Comment.nvim',
    'akinsho/toggleterm.nvim',
    {
        'jedrzejboczar/toggletasks.nvim',
        dependences = {
            'nvim-lua/plenary.nvim',
            'akinsho/toggleterm.nvim',
            'nvim-telescope/telescope.nvim',
        },
    },
    {
        "loctvl842/breadcrumb.nvim",
        dependences = { "nvim-tree/nvim-web-devicons" }
    },
    'lewis6991/gitsigns.nvim',
    {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000 -- Ensure it loads first
    },
    "onsails/lspkind.nvim",
    {
        'glacambre/firenvim',
        build = function() vim.fn['firenvim#install'](0) end,

        -- Lazy load firenvim
        -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
        cond = not not vim.g.started_by_firenvim
    },
})
