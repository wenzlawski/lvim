local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n",     -- NORMAL mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true,  -- use `nowait` when creating keymaps
}

local mappings = {
  C = {
    name = "Clojure",
    c = { "<cmd>ConjureConnect<cr>", "Connect" },
    e = { "<cmd>ConjureEval<cr>", "Eval" },
  },
}

which_key.register(mappings, opts)
