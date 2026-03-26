return {
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
    config = function()
      -- 可选配置
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
      }
    end,
  },
}
