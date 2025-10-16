require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "python",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "yaml",
    "toml",
    "html",
    "css",
    "bash",
    "dockerfile",
    "markdown",
  },
  highlight = { enable = true },
  indent = { enable = true },
})

