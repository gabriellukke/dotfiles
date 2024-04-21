return {
  "datsfilipe/min-theme.nvim",
  name = "min-theme",
  opts = {
    theme = "dark", -- String: 'dark' or 'light', determines the colorscheme used
    transparent = false, -- Boolean: Sets the background to transparent
    italics = {
      comments = true, -- Boolean: Italicizes comments
      keywords = true, -- Boolean: Italicizes keywords
      functions = true, -- Boolean: Italicizes functions
      strings = true, -- Boolean: Italicizes strings
      variables = true, -- Boolean: Italicizes variables
    },
  },
}
