lvim.autocommands = {
    {
        "LspAttach",
        {
            callback = function(args)
                require("lsp_signature").on_attach({}, args.buf)
            end,
        },
    },
    {
        "BufWritePost",
        {
            callback = function()
                local lint_status, lint = pcall(require, "lint")
                if lint_status then
                    lint.try_lint()
                end
            end
        }
    }
    -- {
    --     "VimEnter",
    --     {
    --         command = "NvimTreeOpen"
    --     },
    -- },
}
