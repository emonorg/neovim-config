vim.opt.textwidth = 30
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "

require("telescope").setup({
  defaults = {
    vimgrep_arguments = {
      "--hidden",
    },
  },
})
