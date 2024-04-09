-- lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- base settings
require("settings")

-- plugins
require("lazy").setup("plugins", {})

-- base settings
require("filetypes")

-- base mappings
require("mappings")

-- languages
require("languages.elixir")
require("languages.typescript")
require("languages.lua")
