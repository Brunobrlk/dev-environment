lvim.keys.normal_mode = {
    ["<M-l>"] = ":bnext<CR>",
    ["<M-h>"] = ":bprevious<CR>",
    ["<M-x>"] = ":BufferKill<CR>",
    ["<M-w>"] = ":SudaWrite<CR>",
    ["<C-b>"] = "<cmd>lua vim.lsp.buf.definition()<CR>"
}

lvim.keys.insert_mode["jk"] = "<ESC>"
