return {

	-- themes
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("lualine").setup({
				icons_enabled = true,
				theme = "catppuccin",
			})
		end,
	},

	{
        "catppuccin/nvim",
		name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme catppuccin-mocha")
        end
    },

	-- auto comment `gcc`
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},

	-- lsp stuff
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	-- code completion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",

			"hrsh7th/cmp-nvim-lsp",
		},
	},

	-- make nvim a global var in the config files
	"folke/neodev.nvim",

	{
		"folke/twilight.nvim",
		opts = {
			expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
				"function",
				"method",
				"table",
				"if_statement",
			},
		},
	},

	-- nvim-tree
	{
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
		"nvim-tree/nvim-web-devicons",
	  },
	  config = function()
		require("nvim-tree").setup {}
	  end,
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- todo comments
	{
		'folke/todo-comments.nvim',
		event = 'VimEnter',
		dependencies = {
			'nvim-lua/plenary.nvim'
		},
		opts = {
			signs = false
		}
	},

	-- git signs + blame stuff
	"lewis6991/gitsigns.nvim",

}
