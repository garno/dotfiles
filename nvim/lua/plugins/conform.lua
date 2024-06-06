return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			elixir = { "mix" },
			json = { "jq" },
			lua = { "stylua" },
			ruby = { "rubocop" },
			typescript = { "prettier" },
			yaml = { "prettier" },
		},

		format_on_save = function(buffer)
			if vim.g.disable_autoformat or vim.b[buffer].disable_autoformat then
				return
			end

			return {
				async = true,
				timeout_ms = 2500,
				lsp_fallback = true,
			}
		end,

		formatters = {
			injected = { options = { ignore_errors = true } },
		},
	},
}
