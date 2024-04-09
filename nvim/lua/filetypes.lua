-- mdx
vim.filetype.add({ extension = { mdx = "markdown" } })

-- .env, .env.local, .env.test, etc…
vim.filetype.add({ pattern = { [".env"] = "sh" } })
vim.filetype.add({ pattern = { [".env.*"] = "sh" } })
