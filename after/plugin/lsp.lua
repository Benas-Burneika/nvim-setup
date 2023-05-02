local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  -- Preselect first item
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinster'
  },

  -- Custom mapping
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  },

  -- Add borders to completion menu
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})

