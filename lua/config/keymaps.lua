-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Insert under/up
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
-- 取消默认
-- keymap.set("n", "s", "", opts)
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--Close window
keymap.set("n", "sc", "<C-w>c", opts)
keymap.set("n", "so", "<C-w>o", opts)

-- Terminal
keymap.set("n", "<leader>t", ":sp | terminal<CR>", opts)
keymap.set("n", "<leader>vt", ":vsp | terminal<CR>", opts)
-- keymap.set("t", "<Esc>", "<C-\\><C-n>:q<CR><cmd>:bd<cr>", opts)
-- keymap.set("t", "<Esc>", "<C-\\><C-n><cmd>exit<CR>", opts)
keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
keymap.set("t", "<C-q>", "<C-\\><C-n><cmd>exit<CR>", opts)
keymap.set("t", "<A-h>", [[ <C-\><c-N><C-w>h ]], opts)
keymap.set("t", "<A-j>", [[ <C-\><c-N><C-w>j ]], opts)
keymap.set("t", "<A-k>", [[ <C-\><c-N><C-w>k ]], opts)
keymap.set("t", "<A-l>", [[ <C-\><c-N><C-w>l ]], opts)

-- visual模式下缩进代码
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

keymap.set("n", "de", "d$", opts)
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- redo
keymap.set("n", "<C-r>", ":redo<CR>", opts)

-- 多行替换
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "全局替换光标下的词" }
)

keymap.set("n", "<leader>x", "<cmd>!chmod + %<CR>", { silent = true, desc = "makes files executable" })

keymap.set("n", "<leader>h", function()
  vim.cmd("write")
  vim.fn.system({ "wslview", vim.fn.expand("%:p") })
end, { desc = "Preview HTML in Windows browser" })

vim.keymap.set("n", "<leader>fP", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print(path)
end)
