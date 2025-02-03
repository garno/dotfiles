require("lspconfig").elixirls.setup({
	cmd = { "/opt/homebrew/bin/elixir-ls" },
	elixirLS = {
		mixEnv = "dev",
		logLevel = "debug",
		fetchDeps = true,
	},
})
