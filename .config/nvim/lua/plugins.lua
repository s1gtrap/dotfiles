local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
    use { 'williamboman/mason-lspconfig.nvim' }

    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }
    use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
    use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }  -- buffer auto-completion
    use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }    -- path auto-completion
    use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' } -- cmdline auto-completion
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'navarasu/onedark.nvim'

    use {
        'nvim-lualine/lualine.nvim',
        config = [[require('config.lualine')]],
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        config = [[require('config.nvim-tree')]],
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    --use {
    --'simrat39/rust-tools.nvim',
    --config = [[require('config.rust-tools')]]
    --}

    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        config = [[require('config.telescope')]],
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --use {
    --'mhartington/formatter.nvim',
    --config = [[require('config.formatter')]],
    --}

    use 'mg979/vim-visual-multi'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
