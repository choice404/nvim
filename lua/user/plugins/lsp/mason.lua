local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "clangd",
        'cssls',
        'dockerls',
        'html',
        'jsonls',
        'tsserver',
        'ltex',
        'marksman',
        'pyright',
        'sqlls',
        'bashls',
        'lua_ls'
    }
})

require("lspconfig").clangd.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").dockerls.setup {}
require("lspconfig").html.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").ltex.setup {}
require("lspconfig").marksman.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").sqlls.setup {}
require("lspconfig").bashls.setup {}
require("lspconfig").lua_ls.setup {}
