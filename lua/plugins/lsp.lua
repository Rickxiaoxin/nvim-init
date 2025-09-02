return {
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
      "mason-org/mason.nvim",
      { "mason-org/mason-lspconfig.nvim", config = function() end },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
	callback = function(event)
	    local client = assert(vim.lsp.get_client_by_id(event.data.client_id))
	    -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
	    if client:supports_method('textDocument/completion') then
	      -- Optional: trigger autocompletion on EVERY keypress. May be slow!
	      -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
	      -- client.server_capabilities.completionProvider.triggerCharacters = chars

	      vim.lsp.completion.enable(true, client.id, event.buf, {autotrigger = true})
	    end

	end
    })

    vim.lsp.enable({'lua_ls', 'texlab'})
    end
  },
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()

    end,
  },
  {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
}
