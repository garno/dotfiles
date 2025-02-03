return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.keymap.set("n", "..", ":NvimTreeToggle<CR>")

		local function buffer_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
			vim.keymap.set("n", "|", api.node.open.vertical, opts("Open: Vertical Split"))
			vim.keymap.set("n", "-", api.node.open.horizontal, opts("Open: Horizontal Split"))
		end

		require("nvim-tree").setup({
			on_attach = buffer_attach,

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
	end,
}
