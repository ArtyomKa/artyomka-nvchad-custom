---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
          -- require("conform").format()
        vim.lsp.buf.format()
      end,
      "formatting",
    },
    ["<leader>s"] = { ":%s/\\<<C-r><C-w>\\>/", "Replace word"},

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!
M.dap = {
    n = {
        ["<F9>"] = {"<cmd> DapToggleBreakpoint <CR>"},
        ["<C-F5>"] = {
            function() 
                require('dap').continue()
            end
        },
        ["<F10>"] = {"<cmd> DapStepOver <CR>"},
        ["<F11>"] = {"<cmd> DapStepInto <CR>"},
        ["<S-F11>"] = {"<cmd> DapStepOut <CR>"},
        ["<F5>"] = {"<cmd> DapContinue <CR>"},

    }
}
return M
