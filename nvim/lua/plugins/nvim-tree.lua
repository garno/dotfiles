return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.keymap.set("n", "..", ":NvimTreeToggle <CR>")

		require("nvim-tree").setup({
			view = {
				width = 45,
			},

			git = {
				enable = false,
			},

			filters = {
				dotfiles = false,
				custom = { "node_modules" },
				exclude = { ".DS_Store", ".swo", ".swp" },
			},

			update_focused_file = {
				enable = false,
			},
		})

		local api = require("nvim-tree.api")

		vim.keymap.set("n", "l", api.node.open.edit, { noremap = true, silent = true })
		vim.keymap.set("n", "S", api.node.open.search_node, { noremap = true, silent = true })
		vim.keymap.set("n", "i", api.node.open.vertical_split, { noremap = true, silent = true })
	end,
}
