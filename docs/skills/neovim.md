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
