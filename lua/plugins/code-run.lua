return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    event = "VeryLazy",
    config = function()
      require("code_runner").setup({
        mode = "toggleterm",
        filetype = {
          python = "python $file",
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
          go = "go run $file",
          rust = "cd $dir && cargo run",
          javascript = "node $file",
          typescript = "ts-node $file",
          lua = "lua $file",
          sh = "bash $file",
        },
      })

      -- 设置快捷键
      vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = true })
    end,
  },
}
