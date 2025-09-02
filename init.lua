require('config.options')
require('config.keymaps')
require('config.usercmds')
require('config.autocmds')

vim.cmd('packadd! nohlsearch')

require('config.lazy')

