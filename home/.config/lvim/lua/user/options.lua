-- Theme
require("catppuccin").setup({
    transparent_background = true,
    custom_highlights = function(colors)
        return {
            BookmarkSign = { fg = colors.sapphire, bg = "NONE", bold = true },
            BookmarkAnnotationSign = { fg = colors.peach, bg = "NONE", italic = true },

            -- Fix Telescope transparency & colors
            TelescopeNormal = { bg = "NONE" },
            TelescopeBorder = { fg = colors.surface2, bg = "NONE" },
            TelescopePromptBorder = { fg = colors.surface2, bg = "NONE" },
            TelescopeResultsBorder = { fg = colors.surface2, bg = "NONE" },
            TelescopePreviewBorder = { fg = colors.surface2, bg = "NONE" },
            TelescopePromptNormal = { bg = "NONE" },
            TelescopeResultsNormal = { bg = "NONE" },
            TelescopePreviewNormal = { bg = "NONE" },
            TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },
            TelescopeMatching = { fg = colors.flamingo, bg = "NONE", bold = true },
        }
    end,
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

