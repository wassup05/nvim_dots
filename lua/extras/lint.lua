return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local lint = require 'lint'
    lint.linters_by_ft = {
      markdown = { 'markdownlint' },
      -- fortran = { 'fortitude' }
    }

    vim.list_extend(lint.linters.markdownlint.args, {"--disable", "MD013" })
  end
}
