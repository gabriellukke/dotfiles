# Skill: Neovim

When working inside nvim-custom:

- avoid plugin managers other than lazy.nvim
- prefer Lua
- keep mappings in keymaps.lua
- plugins live under lua/plugins

When working inside nvim-lazy:

- use LazyVim conventions
- avoid editing core LazyVim files
- override through plugin specs

Before adding or changing keymaps:

- check the effective mappings in the target config first
- prefer `vim.fn.maparg(lhs, mode, false, true)` or `:verbose map {lhs}` after loading Neovim
- avoid reusing LazyVim group prefixes such as `<leader>c` without confirming there is no workflow conflict
- keep plugin-specific keymaps in that plugin's spec when using nvim-lazy
