local lspconfig = require("lspconfig")

lspconfig.dartls.setup {
    on_attach = require("lvim.lsp").common_on_attach,
    capabilities = require("lvim.lsp").common_capabilities(),
    cmd = { "dart", "language-server", "--protocol=lsp" },
    filetypes = { "dart" },
    root_dir = lspconfig.util.root_pattern("pubspec.yaml"),
}
