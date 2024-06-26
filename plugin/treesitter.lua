require("nvim-treesitter.configs").setup {
	ensure_installed = { "vim", "vimdoc", "lua", "cpp", "go", "python", },

	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true},
}
