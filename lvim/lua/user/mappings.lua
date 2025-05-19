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


-- Telescope
require("neoclip").setup({
    keys = {
        telescope = {
            i = {
                paste = '<c-o>'
            }
        }
    }
})


-- Which Key
local wk = lvim.builtin.which_key

wk.mappings["Q"] = { ":quitall<CR>", "Exit Session" }

wk.mappings["S"] = {
    name = "Sudo",
    w = { ":SudaWrite<CR>", "Save with Sudo" },
    r = { ":SudaRead<CR>", "Open with Sudo" }
}

wk.mappings["x"] = {
    name = "Trouble",
    x = { ":Trouble diagnostics toggle<cr>", "Diagnostics" },
    X = { ":Trouble diagnostics toggle filter.buf=0<cr>", "Buffer Diagnostics" },
    L = { ":Trouble loclist toggle<cr>", "Location List" },
    Q = { ":Trouble qflist toggle<cr>", "Quickfix List" },
    s = { ":Trouble symbols toggle focus=false<cr>", "Symbols" },
    l = { ":Trouble lsp toggle focus=false win.position=right<cr>", "LSP References" }
}

lvim.builtin.which_key.mappings["v"] = {
    name = "Venv",
    s = { function() require("swenv.api").pick_venv() end, "Select Venv" },
}

wk.mappings["r"] = {
    name = "Session",
    c = { function() require("persistence").load() end, "Open Session" },
    w = { function() require("persistence").select() end, "Select Session" },
    r = { function() require("persistence").load({ last = true }) end, "Load Last Session" },
    d = { function() require("persistence").stop() end, "Disable Persistence" },
}

wk.mappings["l"]["f"] = {
    function() require("conform").format({ async = true, lsp_fallback = true }) end, "Format file (Conform)"
}

wk.mappings["F"] = {
    name = "Flutter",
    r = { ":FlutterRun<cr>", "Run" },
    t = { ":FlutterDevTools<cr>", "Dev Tools" },
    d = { ":FlutterDevices<cr>", "Devices" },
    e = { ":FlutterEmulators<cr>", "Emulators" },
    h = { ":FlutterReload<cr>", "Hot Reload" },
    H = { ":FlutterRestart<cr>", "Hot Restart" },
    p = { ":FlutterPubGet<cr>", "Pub Get" },
    q = { ":FlutterQuit<cr>", "Quit" },
    v = { ":FlutterVisualDebug<cr>", "Visual Debug" },
    c = { ":FlutterCopyProfilerUrl<cr>", "Copy Profiler Url" },
    l = { ":FlutterLogToggle<cr>", "Log Toggle" },
    x = { ":FlutterLogClear<cr>", "Log Clear" },
    o = { ":FlutterOutlineToggle<cr>", "Outline" },
}

wk.mappings["t"] = {
    name = "Telescope",
    f = { ":Telescope flutter commands<CR>", "Flutter Commands" },
    p = { ":Telescope projects<CR>", "Recent Projects" },
    P = { ":Telescope project<CR>", "Select Project" },
    n = { ":NoiceTelescope<CR>", "Noice Messages" },
}

wk.mappings["f"] = {
    name = "Find",
    f = { "<cmd>Telescope find_files<cr>", "Files" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    t = { "<cmd>Telescope live_grep<cr>", "Text" }, -- Or fg(find grep)
    r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
    l = { "<cmd>Telescope resume<cr>", "Last Picker" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    c = { "<cmd>Telescope neoclip<cr>", "Clipboard History" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    h = { "<cmd>Telescope help_tags<cr>", "Help" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Symbols" },
    H = { "<cmd>Telescope highlights<cr>", "Highlight Groups" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    u = { "<cmd>Telescope undo<cr>", "Undo History" },
    w = { "<cmd>Telescope grep_string<cr>", "Word" },
}

wk.mappings["Lt"] = { "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>", "Theme" }
