lvim.autocommands = {
    {
        "VimEnter",
        {
            command = "NvimTreeOpen"
        },
    },
    {
        "LspAttach",
        {
            callback = function(args)
                require("lsp_signature").on_attach({}, args.buf)
            end,
        },
    }
}
