local null_ls = require("null-ls")
local opts = {
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.diagnostics.hadolint
    -- null_ls.builtins.diagnostics.mypy,
    -- null_ls.builtins.diagnostics.clang_format,
  }
}


null_ls.setup(opts)
