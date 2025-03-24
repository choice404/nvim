return {
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggeestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<C-j>",
            next = "<C-n>",
            dismis = "<C-d>",
          },
        },
        panel = { enabled = false },
      })
    end,
  },
}
