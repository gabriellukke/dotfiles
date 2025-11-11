return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'black' },
      javascript = { 'prettierd', 'prettier' },
      typescript = { 'prettierd', 'prettier' },
      c = { 'clang_format' },
      cpp = { 'clang_format' },
    },
    format_on_save = false,
    formatters = {
      clang_format = {
        prepend_args = {
          '--style={BasedOnStyle: LLVM, AllowShortFunctionsOnASingleLine: None}',
        },
      },
    },
  },
  config = function(_, opts)
    require('conform').setup(opts)
    local conform = require('conform')
    local map = vim.keymap.set
    local f = function(a) conform.format(a) end
    map('n', '<leader>f', function() f({ async = true, lsp_fallback = true }) end, { desc = 'Format file', silent = true, noremap = true })
    map('n', '<leader>lf', function() f({ async = true, lsp_fallback = true }) end, { desc = 'LSP: Format file', silent = true, noremap = true })
    map('x', '<leader>f', function() f({ async = true, lsp_fallback = true, range = true }) end, { desc = 'Format selection', silent = true, noremap = true })
    map('x', '<leader>lf', function() f({ async = true, lsp_fallback = true, range = true }) end, { desc = 'LSP: Format selection', silent = true, noremap = true })
  end,
}
