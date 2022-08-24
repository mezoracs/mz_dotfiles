-- mezora plugins config

return require('packer').startup(function(use)
	
	-- improve startup time
	use("lewis6991/impatient.nvim");  

	-- polyglot
	use('sheerun/vim-polyglot');

	-- autoclose plug
	use("Townk/vim-autoclose");

	-- colorscheme list
	use("rebelot/kanagawa.nvim");
	use("savq/melange");
	use("marko-cerovac/material.nvim");

	-- treesitter (highlight)
	use ({
    	"nvim-treesitter/nvim-treesitter",
    	run=function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    });

	-- python syntax
	use("vim-python/python-syntax");

	-- cpp syntax
	use("bfrg/vim-cpp-modern");

	-- indent tool
	use("lukas-reineke/indent-blankline.nvim");

	-- snippets
	use("rafamadriz/friendly-snippets");

	-- devicons
	use("kyazdani42/nvim-web-devicons");

	-- tree navegation
	use("kyazdani42/nvim-tree.lua");

	-- lualine
	use("nvim-lualine/lualine.nvim");

	if packer_bootstrap then
    		require('packer').sync()
  	end
end)
