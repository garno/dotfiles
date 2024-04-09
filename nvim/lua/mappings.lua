-- bye bye, esc
vim.keymap.set("i", "jj", "<esc>", { noremap = true })
vim.keymap.set("i", "kk", "<esc>", { noremap = true })
vim.keymap.set("i", "<esc>", "<NOP>", { noremap = true })

-- pane navigation to avoid conflicts with tmux
--   usage: CTRL + [h, j, k, l]
vim.keymap.set("n", "<C-J>", "<C-W><C-J>", { noremap = true })
vim.keymap.set("n", "<C-K>", "<C-W><C-K>", { noremap = true })
vim.keymap.set("n", "<C-L>", "<C-W><C-L>", { noremap = true })
vim.keymap.set("n", "<C-H>", "<C-W><C-H>", { noremap = true })

-- tabs
vim.keymap.set("v", "<Tab>", ">gv|", { noremap = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true })

-- clear search highlights
vim.keymap.set("n", "<Space>", ":silent noh<Bar>echo<CR>")

-- dom to css classes
vim.keymap.set("v", "<Leader>c", ':s/^.* class="(.*)".*/.\1 {\r}\r/g<CR>')
