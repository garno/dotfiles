return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
	opts = {
		mode = "float",
		prompts = {
			Explain = {
				prompt = "/COPILOT_EXPLAIN Write a explanation for the code above as paragraphs of text.",
				mapping = "<leader>ie",
			},
			Tests = {
				prompt = "/COPILOT_TESTS Write a set of detailed unit test functions for the code above.",
				mapping = "<leader>it",
				selection = function(source)
					return require("CopilotChat.select").buffer(source)
				end,
			},
			Fix = {
				prompt = "/COPILOT_FIX There is a problem in this code. Rewrite the code to show it with the bug fixed.",
				mapping = "<leader>if",
			},
			Diagnostic = {
				prompt = "Please assist with the following diagnostic issue in file:",
				mapping = "<leader>id",
				selection = function(source)
					return require("CopilotChat.select").diagnostics(source)
				end,
			},
		},
		window = {
			layout = "float",
			title = "Copilot Chat",
			zindex = 1,
		},
	},
	build = function()
		vim.defer_fn(function()
			vim.cmd("UpdateRemotePlugins")
			vim.notify("CopilotChat - Updated remote plugins. Please restart Neovim.")
		end, 3000)
	end,
	event = "VeryLazy",
	keys = {
		{ "<leader>ii", ":CopilotChatToggle<CR>" },
	},
}
