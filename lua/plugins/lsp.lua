return {

{
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },

 -- example calling setup directly for each LSP
  config = function()
    vim.diagnostic.config({
      underline = false,
      signs = false,
      update_in_insert = false,
      virtual_text = { spacing = 2, prefix = "*"},
      severrity_sort = true,
      float = {
        border = "rounded",
      },
    })
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lspconfig = require('lspconfig')

    lspconfig['lua_ls'].setup({ capabilities = capabilities })
  end
}

}
