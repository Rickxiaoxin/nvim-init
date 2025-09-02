return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  lazy = true,
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "diff",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "printf",
      "python",
      "query",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "xml",
      "yaml",
    },
    highlight = {
      enable = true,
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
          --  If you are experiencing weird indenting issues, add the language to
          --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      -- additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = {
      enable = true,
      -- disable = { 'ruby' },
    },
    incremental_selection = {
      enable = true,
    },
  },
}
