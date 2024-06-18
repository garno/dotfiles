return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	config = function()
		require("nvim-treesitter.configs").setup({
			sync_install = false,
			auto_install = true,
			build = ":TSUpdate",
			event = { "BufRead", "BufNewFile" },

			ensure_installed = {
				"eex",
				"elixir",
				"erlang",
				"heex",
				"html",
			},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			indent = { enabled = true },
		})
	end,
}
