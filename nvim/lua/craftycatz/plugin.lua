local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here

	use({ "wbthomason/packer.nvim"}) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	
    -- Colorscheme
    use ({'olivercederborg/poimandres.nvim',})

    -- Treesitter
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use({'p00f/nvim-ts-rainbow'})

    -- Status Line
    use({'nvim-lualine/lualine.nvim'})
    -- Cmp & plugins
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-buffer'})
    use({'hrsh7th/cmp-path'})
    use({'hrsh7th/cmp-cmdline'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use({'saadparwaiz1/cmp_luasnip'})

    -- Snippets
    use({'L3MON4D3/LuaSnip'})
    use({'rafamadriz/friendly-snippets'})

    -- Languge Server Protocol
    use({'neovim/nvim-lspconfig'})
    use({ 'glepnir/lspsaga.nvim'})
    use({'williamboman/mason.nvim'})
    use({'williamboman/mason-lspconfig.nvim'})
    use({'onsails/lspkind-nvim'})
    use({ "jose-elias-alvarez/null-ls.nvim"})

    -- Bufferline
    use({'akinsho/nvim-bufferline.lua'})

    -- Co-Pilot
    use({'github/copilot.vim'})


    -- Misc
    use({'windwp/nvim-ts-autotag'})
    use({'windwp/nvim-autopairs'}) 
    use({'kyazdani42/nvim-web-devicons'}) 
    use({'jose-elias-alvarez/null-ls.nvim'}) 
    use({'MunifTanjim/prettier.nvim'}) 
  
    -- Telescope fuzzy finder
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)