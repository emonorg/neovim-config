-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local cmp = require("cmp")

cmp.setup({
  -- Other configuration options...

  mapping = {
    -- Existing mappings...

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    -- Other mappings...
  },

  -- Other configuration options...
})

vim.api.nvim_set_keymap(
  "n",
  "<leader>er",
  [[:lua YankDiagnosticError()<CR>]],
  { noremap = true, silent = true, desc = "Copy error" }
)

function YankDiagnosticError()
  vim.diagnostic.open_float()
  vim.diagnostic.open_float()
  local win_id = vim.fn.win_getid() -- get the window ID of the floating window
  vim.cmd("normal! j") -- move down one row
  vim.cmd("normal! VG") -- select everything from that row down
  vim.cmd("normal! y") -- yank selected text
  vim.api.nvim_win_close(win_id, true) -- close the floating window by its ID
end
