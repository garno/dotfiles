local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
	init_options = {
		plugins = { -- I think this was my breakthrough that made it work
			{
				name = "@vue/typescript-plugin",
				location = "/Users/sam/.asdf/installs/nodejs/20.10.0/lib/node_modules/@vue/language-server",
				languages = { "vue" },
			},
		},
	},

	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

lspconfig.volar.setup({})
