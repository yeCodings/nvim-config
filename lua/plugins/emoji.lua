-- ~/.config/nvim/lua/config/lazy.lua
return {
  event = "VeryLazy",
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- 向 sources 添加 emoji
      table.insert(opts.sources, {
        name = "emoji",
      })
      return opts
    end,
  },
  {
    "hrsh7th/cmp-emoji",
    event = "InsertEnter",
  },
}
