return {
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
    keys = {
      {
        "<leader>aa",
        function()
          require("opencode").ask()
        end,
        desc = "AI: Ask",
      },
      {
        "<leader>ac",
        function()
          require("opencode").chat()
        end,
        desc = "AI: Chat",
      },
      {
        "<leader>as",
        function()
          require("opencode").select()
        end,
        desc = "AI: Select",
      },
    },
    config = function()
      vim.g.opencode_opts = {}
    end,
  },
}
