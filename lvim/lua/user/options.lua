-- Theme
require("catppuccin").setup({
    custom_highlights = function(colors)
        return {
            BookmarkSign = { fg = colors.sapphire, bg = "NONE", bold = true },
            BookmarkAnnotationSign = { fg = colors.peach, bg = "NONE", italic = true },
        }
    end
})

vim.g.bookmark_sign = ""
vim.g.bookmark_annotation_sign = ""
lvim.colorscheme = "catppuccin-macchiato"

-- Others
local opts = vim.opt
opts.wrap = true
opts.shiftwidth = 4
opts.tabstop = 4
opts.smartindent = true
opts.autoindent = true
opts.expandtab = true

