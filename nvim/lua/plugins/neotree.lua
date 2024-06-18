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
					["i"] = "open_split",
					["/"] = "", -- i like to use the regular search pattern
				},
			},

			filesystem = {
				get_git_status = false,
				use_libuv_file_watcher = false,

				renderers = {
					file = {
						{ "icon" },
						{ "name", use_git_status_colors = false },
					},
					directory = {
						{ "icon" },
						{ "name", use_git_status_colors = false },
					},
				},

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
