return {
  'nvim-treesitter/nvim-treesitter',
  build = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
  end,
  config = function()
    require('nvim-treesitter.configs').setup {
      -- Liste des parseurs à installer automatiquement
      ensure_installed = {
        "c",        -- Pour C
        "lua",      -- Pour Lua (config nvim)
        "vim",      -- Pour les fichiers vim
        "python",   -- Pour Python
        "make",     -- Pour les Makefiles
      },

      -- Installation synchrone des parseurs
      sync_install = false,

      -- Installation automatique des parseurs manquants
      auto_install = true,

      -- Configuration de la coloration syntaxique
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      -- Support de l'indentation
      indent = {
        enable = true
      },
    }
  end,
}
