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

telescope.on_config_done = function(telescope_arg)
    pcall(telescope_arg.load_extension, "project")
    pcall(telescope_arg.load_extension, "flutter")
    pcall(telescope_arg.load_extension, "file_browser")
    pcall(telescope_arg.load_extension, "undo")
    pcall(telescope_arg.load_extension, "neoclip")
end
