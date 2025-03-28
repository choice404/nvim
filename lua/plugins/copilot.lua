return {
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<C-j>", -- Press Ctrl + k to accept a suggestion
            next = "<C-n>", -- Use Ctrl + j to skip the current suggestion and move on
            dismiss = "<C-d>", -- Optional: You can dismiss with Ctrl + l if you want
          },
        },
        panel = { enabled = false }, -- Disable Copilot's inline suggestions panel
      })
    end,
  },
}
