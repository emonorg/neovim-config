return {
  {
    "mcookly/bidi.nvim",
    event = "VeryLazy",
    config = function()
      require("bidi").setup()
    end,
  },
}
