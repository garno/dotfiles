return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "..", ":Neotree toggle <CR>")

		require("neo-tree").setup({
			window = {
				width = 45,
				mappings = {
					["l"] = "open",
					["S"] = "fuzzy_finder",
				},
			},

			filesystem = {
				follow_current_file = {
					enabled = false,
				},
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						"node_modules",
					},
					never_show = {
						".DS_Store",
						".swo",
						".swp",
					},
				},
			},
		})
	end,
}
