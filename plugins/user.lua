return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "brenoprata10/nvim-highlight-colors",
    config = function() require("nvim-highlight-colors").setup() end,
  },

  -- This plugin provides a fast way to jump between words in a document.
  -- hit s on normal mode to hop
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },

  ---------------------------------
  ------------ GENERAL ------------
  ---------------------------------

  -- This plugin provides a linetrack of the divs for example like vscode
  { "michaeljsmith/vim-indent-object" },

  { "mg979/vim-visual-multi" },

  -- This plugin highlights TODO comments in code and provides quick navigation to them.
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function() require("todo-comments").setup() end,
  },

  -- underlines the word under the cursor
  {
    "itchyny/vim-cursorword",
    event = { "BufEnter", "BufNewFile" },
    config = function()
      vim.api.nvim_command "augroup user_plugin_cursorword"
      vim.api.nvim_command "autocmd!"
      vim.api.nvim_command "autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0"
      vim.api.nvim_command "autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif"
      vim.api.nvim_command "autocmd InsertEnter * let b:cursorword = 0"
      vim.api.nvim_command "autocmd InsertLeave * let b:cursorword = 1"
      vim.api.nvim_command "augroup END"
    end,
  },

  ------------------------------------
  ------------ TS-PLUGINS ------------
  ------------------------------------

  -- This plugin automatically adds closing tags when editing HTML/XML files.
  {
    "windwp/nvim-ts-autotag",
    config = function() require("nvim-ts-autotag").setup() end,
  },

  { "mrjones2014/nvim-ts-rainbow" },
}
