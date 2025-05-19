local lualine = lvim.builtin.lualine

lualine.active = true

lualine.options = {
    theme = "auto",
    icons_enabled = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
}

local components = require("lvim.core.lualine.components")
local device = require "nvim_android_device"
lualine.sections = {
    lualine_a = {
        "mode",
    },
    lualine_b = { components.branch, components.diff },
    lualine_c = { components.diagnostics,
        {
            require("noice").api.statusline.mode.get,
            cond = require("noice").api.statusline.mode.has,
        }
    },
    lualine_x = { device.android_model, components.python_env, components.filetype, components.lsp },
    lualine_y = { components.progress, components.location },
    lualine_z = {},
}
