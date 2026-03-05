-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true,
})

vim.filetype.add({
  pattern = {
    ["%.gitlab%-ci%.ya?ml"] = "yaml.gitlab",
  },
})

vim.g.lazyvim_python_lsp = "pyright"
