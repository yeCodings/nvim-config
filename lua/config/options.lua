-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
return {
  -- 确保支持块选择模式
  options = {
    virtualedit = "block", -- 允许在块选择模式中移动到行尾之后
  },
}
