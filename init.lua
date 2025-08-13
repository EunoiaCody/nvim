-- neovim config


vim.opt.number = true -- 显示行号
vim.opt.list = true -- 高亮当前选中的行

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.optshiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- For Language
vim.cmd("language en_US.UTF-8") -- 设置语言为英语

-- neovide fontsize
if vim.g.neovide then
  vim.keymap.set({ "n", "v" }, "<C-ScrollWheelUp>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-ScrollWheelDown>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
end

-- lazy.nvim
require("config.lazy") -- 使用 lazy.nvim 作为 neovim 的插件管理器
