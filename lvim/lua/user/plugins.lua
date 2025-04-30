lvim.plugins = {
    -- Catppuccin Theme
    { "catppuccin/nvim" },

    -- Git Command Shortcuts
    { "tpope/vim-fugitive" },

    -- Allow save files with sudo
    {
        "lambdalisue/suda.vim",
        config = function()
            vim.cmd("let g:suda_smart_edit = 1")
            vim.cmd("let g:suda#noninteractive = 1")
        end,
    },

    -- Show Method Signatures
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        config = function()
            local lsp_signature = require("lsp_signature")
            lsp_signature.setup({
                bind = true,
                handler_opts = { border = "rounded" },
                floating_window = true,
                hint_enable = true,
                hint_prefix = "🐼 ",
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    lsp_signature.on_attach({}, args.buf)
                end,
            })

            vim.keymap.set({ "n", "i" }, "<C-q>", function()
                require("lsp_signature").toggle_float_win()
            end, { silent = true, noremap = true })
        end,
    },

    -- Code problems and diagnostics
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)",
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)",
            },
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)",
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)",
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)",
            },
        },
    },

    -- Navigate from/to tmux windows
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },

    -- Auto install Mason tools
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup {
                ensure_installed = {
                    "kotlin_language_server",
                    "java-language-server",
                    "bash-language-server",
                    "groovy-language-server",
                    "vim-language-server",
                    "json-lsp",
                    "ktlint",
                    "ruff",
                    "pyright",
                },
                auto_update = false,
                run_on_start = true,
                start_delay = 3000, -- ms
            }
        end
    }
}
