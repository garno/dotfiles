return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local utils = require("telescope.utils")

		vim.keymap.set("n", "<leader>,", builtin.find_files, {})
		vim.keymap.set("n", "<leader>o", function()
			require("telescope.builtin").find_files({
				cwd = require("telescope.utils").buffer_dir(),
			})
		end, {})
		vim.keymap.set("n", "<leader>s", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>b", builtin.buffers, {})
	end,
}
