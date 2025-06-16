lvim.plugins = {
    -- UI Enhancements ----------------------------------------------
    -- Catppuccin Theme
    { "catppuccin/nvim" },

    -- Highligh Comments
    { "folke/todo-comments.nvim", event = "BufRead" },

    -- Code problems and Diagnostics
    { "folke/trouble.nvim",       cmd = "Trouble",  opts = {} },

    -- Floating Search/CMD
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = { "MunifTanjim/nui.nvim" }
    },

    -- Android Device integration for lualine
    { "brunobrlk/nvim-android-device", lazy = true },


    -- Git ----------------------------------------------
    -- Command Shortcuts
    { "tpope/vim-fugitive" },

    -- Highligh diffview
    { "sindrets/diffview.nvim",        event = "BufRead" },


    -- Navigation ----------------------------------------------
    -- Jump to any word or character
    {
        "smoka7/hop.nvim",
        version = "*",
        opts = { keys = "etovxqpdygfblzhckisuran" }
    },

    { "MattesGroeger/vim-bookmarks" },

    -- Persist sessions
    { "folke/persistence.nvim",                    opts = {} },

    -- Telescope Project Manager Extension
    { "nvim-telescope/telescope-project.nvim" },

    -- Telescope File Browser Extension
    { "nvim-telescope/telescope-file-browser.nvim" },

    -- Telescope Undo Browser Extension
    { "debugloop/telescope-undo.nvim" },

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


    -- LSP, Formatters and Linters ----------------------------------------------
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
                "pyright",
                "ktlint",
                "ruff",
                "xmlformatter"
            },
            auto_update = false,
            run_on_start = true,
            start_delay = 3000
        }
    },

    -- Formatters Management
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        opts = {
            formatters_by_ft = {
                kotlin = { "ktlint" },
                python = { "ruff" },
                xml = { "xmlformatter" },
                dart = { "dart_format" }
            },
        }
    },

    -- Linters Management
    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        init = function()
            require("lint").linters_by_ft = {
                python = { "ruff" },
                kotlin = { "ktlint" },
            }
        end
    },

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

    -- Dart requires a little more to setup
    { "dart-lang/dart-vim-plugin", ft = "dart" },

    -- Flutter Tools
    {
        "nvim-flutter/flutter-tools.nvim",
        lazy = false,
        dependencies = { "stevearc/dressing.nvim" },
    },

    -- Swich python virtual environment
    {
        "AckslD/swenv.nvim",
        opts = {
            post_set_venv = function()
                vim.cmd("LspRestart")
            end
        },
        event = "VeryLazy",
    },


    -- Editing ----------------------------------------------
    -- Better surround matching
    { "tpope/vim-surround" },

    -- Repeat actions from plugins such as surround using .
    { "tpope/vim-repeat" },

    { "AckslD/nvim-neoclip.lua",   opts = {} },

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
