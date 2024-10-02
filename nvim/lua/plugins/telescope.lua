return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { "node_modules" },

				mappings = {
					i = {
						["<esc>"] = require("telescope.actions").close,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>,", builtin.find_files, {})
		vim.keymap.set("n", "<leader>o", function()
			require("telescope.builtin").find_files({
				cwd = require("telescope.utils").buffer_dir(),
			})
		end, {})
		vim.keymap.set("n", "<leader>s", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>b", function()
			require("telescope.builtin").buffers({ sort_lastused = true, ignore_current_buffer = true })
		end, {})
		vim.keymap.set("n", "<leader>ca", function()
			require("CopilotChat.integrations.telescope").pick(require("CopilotChat.actions").prompt_actions())
		end, {})
		vim.keymap.set("v", "<leader>ca", function()
			require("CopilotChat.integrations.telescope").pick(require("CopilotChat.actions").prompt_actions())
		end, {})
	end,
}
