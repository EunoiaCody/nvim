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
vim.cmd("language en_GB.UTF-8") -- 设置语言为英语

-- lazy.nvim
require("config.lazy") -- 使用 lazy.nvim 作为 neovim 的插件管理器
