return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- If true, items are dimmed instead of hidden
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    },
  },
}
