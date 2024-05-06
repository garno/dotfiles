return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			elixir = { "mix" },
			typescript = { "prettier" },
			json = { "jq" },
		},

		["*"] = { "codespell" },

		format_on_save = {
			async = true,
			timeout_ms = 2500,
			lsp_fallback = true,
		},

		formatters = {
			injected = { options = { ignore_errors = true } },
		},
	},
}
