require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)

require "plugins"

-- my keymaps
vim.keymap.set('n', '<C-Space>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-F>', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<S-F>', ':Telescope find_files<CR>')
vim.cmd('command ZshConfig :e $HOME/.zshrc')
vim.cmd('command RCloneConfig :e $HOME/.config/rclone/rclone.conf')
vim.cmd('command NvimConfig :e $HOME/.config/nvim/init.lua')

-- my left mouse options 

-- EXAMPLE
-- vim.cmd([[nmenu PopUp.Lsp:\ Diagnostics\ Line <CMD>Lspsaga show_line_diagnostics<CR>]])
