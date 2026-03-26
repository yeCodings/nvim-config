return {
  {
    "mistweaverco/kulala.nvim",
    ft = { "http", "rest" },
    opts = {
      global_keymaps = false,
      global_env = true, -- 读取全局环境变量（如 shell 里的 API_TOKEN）
      debug = false,
    },
    keys = {
      {
        "<leader>rr",
        function()
          require("kulala").run()
        end,
        desc = "HTTP: Run current request",
      },
      {
        "<leader>ra",
        function()
          require("kulala").run_all()
        end,
        desc = "HTTP: Run all requests",
      },
      {
        "<leader>rb",
        function()
          require("kulala").scratchpad()
        end,
        desc = "HTTP: Scratchpad",
      },
    },
  },

  -- 让 .http / .rest 自动识别文件类型
  {
    "nvim-lua/plenary.nvim",
    config = function()
      vim.filetype.add({
        extension = {
          http = "http",
          rest = "http",
        },
      })
    end,
  },
}
