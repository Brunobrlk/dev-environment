lvim.plugins = {
    -- UI Enhancements ----------------------------------------------
    -- Catppuccin Theme
    { "catppuccin/nvim" },

    -- Highligh Comments
    { "folke/todo-comments.nvim", event = "BufRead" },

    -- Code problems and Diagnostics
    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble"
    },

    -- Floating Search/CMD
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = { "MunifTanjim/nui.nvim" }
    },


    -- Git ----------------------------------------------
    -- Command Shortcuts
    { "tpope/vim-fugitive" },

    -- Highligh diffview
    { "sindrets/diffview.nvim", event = "BufRead" },


    -- Navigation ----------------------------------------------
    -- Jump to any word or character
    {
        'smoka7/hop.nvim',
        version = "*",
        opts = { keys = "etovxqpdygfblzhckisuran" }
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
            "TmuxNavigatePrevious"
        }
    },

    -- Enhanced quickfix window
    {
        "kevinhwang91/nvim-bqf",
        event = { "BufRead", "BufNew" },
        opts = {
            auto_enable = true,
            preview = {
                win_height = 12,
                win_vheight = 12,
                delay_syntax = 80,
                border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
            },
            func_map = {
                vsplit = "",
                ptogglemode = "z,",
                stoggleup = "",
            },
            filter = {
                fzf = {
                    action_for = { ["ctrl-s"] = "split" },
                    extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
                }
            }
        }
    },


    -- LSP ----------------------------------------------
    -- Show Method Signatures
    {
        "ray-x/lsp_signature.nvim",
        event = "VeryLazy",
        opts = {
            bind = true,
            handler_opts = { border = "rounded" },
            floating_window = true,
            hint_enable = true,
            hint_prefix = "🐼 "
        }
    },

    -- Auto install Mason tools
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
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
            start_delay = 3000
        }
    },

    -- Editing ----------------------------------------------
    -- Better surround matching
    { "tpope/vim-surround" },

    -- Allow save files with sudo
    {
        "lambdalisue/suda.vim",
        init = function()
            vim.cmd("let g:suda_smart_edit = 1")
            vim.cmd("let g:suda#noninteractive = 1")
        end
    },

    -- Completion on command line
    { "hrsh7th/cmp-cmdline" }
}
