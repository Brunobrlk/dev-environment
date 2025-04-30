local telescope = lvim.builtin.telescope

telescope.defaults = {
    layout_strategy = "horizontal",
    layout_config = {
        horizontal = {
            preview_width = 0.67,
            results_width = 0.33,
            mirror = false,
        },
        width = 0.85,
        height = 0.85,
        preview_cutoff = 120,
    },
    winblend = 20,
    path_display = { truncate = 3 },
    file_ignore_patterns = { ".git", "venv" },

    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
}

