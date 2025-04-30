-- Neovim
lvim.keys.normal_mode = {
    ["<M-l>"] = ":bnext<CR>",
    ["<M-h>"] = ":bprevious<CR>",
    ["<M-x>"] = ":BufferKill<CR>",

    ["<C-h>"] = ":TmuxNavigateLeft<CR>",
    ["<C-j>"] = ":TmuxNavigateDown<CR>",
    ["<C-k>"] = ":TmuxNavigateUp<CR>",
    ["<C-l>"] = ":TmuxNavigateLeft<CR>",
    ["<C-\\>"] = ":TmuxNavigatePrevious<CR>"
}

lvim.keys.insert_mode["jk"] = "<ESC>"


-- LSP
lvim.lsp.buffer_mappings.normal_mode["<C-b>"] = { vim.lsp.buf.definition, "Go to definition" }

lvim.keys.normal_mode["<C-p>"] = function()
    require("lsp_signature").toggle_float_win()
end

lvim.keys.insert_mode["<C-p>"] = function()
    require("lsp_signature").toggle_float_win()
end


-- Which Key
local wk = lvim.builtin.which_key

wk.mappings["S"] = {
    name = "Sudo",
    w = { ":SudaWrite<CR>", "Save with Sudo" },
    r = { ":SudaRead<CR>", "Open with Sudo" }
}

wk.mappings["x"] = {
    name = "Trouble",
    x = { "<cmd>Trouble diagnostics toggle<cr>", "Diagnostics" },
    X = { "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", "Buffer Diagnostics" },
    L = { "<cmd>Trouble loclist toggle<cr>", "Location List" },
    Q = { "<cmd>Trouble qflist toggle<cr>", "Quickfix List" },
    s = { "<cmd>Trouble symbols toggle focus=false<cr>", "Symbols" },
    l = { "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", "LSP References" }
}
