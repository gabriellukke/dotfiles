local litellm_secrets = vim.fn.expand("~/Dev/config/dotfiles/.secrets/litellm.env")

local function litellm_env(name)
  return string.format("cmd:zsh -lc 'source %q; printf %%s \"$%s\"'", litellm_secrets, name)
end

return {
  {
    "olimorris/codecompanion.nvim",
    version = "^19.0.0",
    opts = {
      adapters = {
        http = {
          litellm = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              env = {
                url = litellm_env("LITELLM_BASE_URL"),
                api_key = litellm_env("LITELLM_API_KEY"),
                chat_url = "/chat/completions",
                models_endpoint = "/models",
              },
            })
          end,
        },
      },
      interactions = {
        chat = { adapter = "litellm" },
        inline = { adapter = "litellm" },
        cmd = { adapter = "litellm" },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
